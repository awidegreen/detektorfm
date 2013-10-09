# detektorfm

Library for the **detektor.fm** website.

The gem includes the following executables:

* detektorfm.player 
* detektorfm.playlist

Features:

* querying last played songs 
* most played artist in last 7 weeks
* ... to be extended ... 

## Installation

Add this line to your application's Gemfile:

    gem 'detektorfm'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install detektorfm

## Library usage

Get an instance of  `DetektorFm::MusikStream` or `DetektorFm::WortStream` and 
start querying the playlist with `played()` or get specific stream url
`get_stream_url

**Example** Query last 42 played songs from musikstream
```
  require "detektorfm"
  
  stream = DetektorFm::MusikStream.new
  stream.played(42) do |time, artist, title|
    printf "   %20s   %s - %s\n", time, artist, title
  end
```

## Executables
Some reference implementations.

Use `-h` for help. 

### detektorfm.playlist

Query last played songs (default 3) from wortstream and musikstream:

    detektorfm.playlist -m -w

Query last 15 last played songs from musikstream:

    detektorfm.playlist -m -l15

Query most played artists form the last 7 days, overall (both streams)

    detektorfm.playlist -p


### detektorfm.player

Requires *mplayer* to be installed.

Play the musikstream 

    detektorfm.player musik

Play the wortstream 

    detektorfm.player wort

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License                                                            
Licensed under BSD (2-Clause), see LICENSE.txt


[awidegreen](http://github.com/awidegreen)
