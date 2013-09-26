# detektorfm

Library for the *detektor.fm* website.

Features:
* querying last played songs 
* most played artist in last 7 weeks
* ... to be extended ... 

For example implementation, see `./bin/*`


## Installation 

```
gem install detektorfm
```

## Usage

Run `detektorfm -h` for help.

```
# query last played songs from wortstream and musikstream
detektorfm -m -w

# query last 15 last played songs from musikstream
detektorfm -m -l15

# query most played artists form the last 7 days, overall (both streams)
detektorfm -p
```

If you cloned the repo directly run `ruby -Ilib bin/detektorfm` from cloned 
directory.

## License 
Licensed under BSD (2-Clause), see LICENSE.txt



[awidegreen](http://github.com/awidegreen)
