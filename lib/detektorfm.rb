require "detektorfm/version"

require 'nokogiri'
require 'open-uri'

module DetektorFm
  def self.most_played_artist_overall
    Stream.new.most_played_artist
  end

  class Stream
    @@PLAYLIST_URL = "http://detektor.fm/playlisten"
    @@STREAM_URL =   "http://detektor.fm/stream"

    def played(limit = 100)
      timetable = []
      # only 100 are show per page, so iterate over page in case 
      # limit >100 requested
      (limit/101+1).times do |i|
        url = "#{get_playlist_url}/P#{i*100}"
        html_doc = Nokogiri::HTML(open(url))
        parse_htmldoc_played(html_doc) do |time, artist, title|
          timetable << {:time => time, :artist => artist, :title => title}
        end
      end

      timetable[0,limit].each do |e|
          yield e[:time], e[:artist], e[:title]
      end
    end

    def most_played_artist 
      artists = []
      url = "#{get_playlist_url}"
      html_doc = Nokogiri::HTML(open(url))
      html_doc.xpath('//ul[@class="tagcloud"]/li/a/text()').each do |a|
        artists << a.to_s.strip
      end
      return artists
    end

    def get_playlist_url
      "#{@@PLAYLIST_URL}/#{get_stream_key}"
    end

    def get_stream_url(type = :mp3)
      "#{@@STREAM_URL}/#{type}/#{get_stream_key}"
    end

    private
    def parse_htmldoc_played(html_doc) 
      html_doc.xpath('//table[@class="timetable"]/tbody/tr').each do |row|
        time = row.xpath('td[@class="time"]/text()').to_s.strip
        #stream = row.xpath('td[@class="stream"]/a/text()').to_s.strip
        artist = row.xpath('td[@class="artist"]/a/text()').to_s.strip
        title = row.xpath('td[@class="title"]/text()').to_s.strip

        yield time, artist, title
      end
    end
  end

  class MusikStream < Stream
    def get_stream_key
      "musik"
    end
  
    def get_name 
      "MusikStream"
    end
  end

  class WortStream < Stream
    def get_stream_key
      "wort"
    end

    def get_name 
      "WortStream"
    end
  end

end
