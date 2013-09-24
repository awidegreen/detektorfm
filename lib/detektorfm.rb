#!/usr/bin/env ruby 

require 'nokogiri'
require 'open-uri'

module DetektorFm
  PLAYLIST_URL = "http://detektor.fm/playlisten/"

  class Request

    def initialize
      @html_doc = Nokogiri::HTML(open(PLAYLIST_URL))
    end

    def playlist(streams=[], limit = 100)
      timetable = Hash.new
      @html_doc.xpath('//table[@class="timetable"]/tbody/tr').each do |row|
        time = row.xpath('td[@class="time"]/text()').to_s.strip
        stream = row.xpath('td[@class="stream"]/a/text()').to_s.strip
        artist = row.xpath('td[@class="artist"]/a/text()').to_s.strip
        title = row.xpath('td[@class="title"]/text()').to_s.strip

        timetable[stream] = Array.new if timetable[stream].nil?
        timetable[stream] << {:time => time, :artist => artist, :title => title}
      end

      timetable.each do |key,entries|
        next unless streams.include?(key)
        yield key, entries[0,limit]
      end
    end

    def most_played_artist
      artists = []
      @html_doc.xpath('//ul[@class="tagcloud"]/li/a/text()').each do |a|
        artists << a.to_s.strip
      end
      return artists
    end
  end
end
