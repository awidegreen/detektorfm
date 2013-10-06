# detektorfm

Library for the *detektor.fm* website.

Features:
* querying last played songs 
* most played artist in last 7 weeks
* ... to be extended ... 

For example implementations, see awidegreen/detektorfm-tools

## Installation

Add this line to your application's Gemfile:

    gem 'detektorfm'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install detektorfm

## Usage

Get an instance of  `DetektorFm::MusikStream` or `DetektorFm::WortStream` and 
start querying the playlist with `played()` or get specific stream url
`get_stream_url`.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License                                                            
Licensed under BSD (2-Clause), see LICENSE.txt



[awidegreen](http://github.com/awidegreen)
