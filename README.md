# ruby-mhash [![Build Status](https://travis-ci.org/TibshoOT/ruby-mhash.png?branch=master)](https://travis-ci.org/TibshoOT/ruby-mhash)

Mhash wrapping library for Ruby.

## Requirements

You need mhash libray installed.

### Debian/Ubuntu

    $ sudo apt-get install libmhash-dev

### FreeBSD (using ports)

    # cd /usr/ports/security/mhash
    # make install

### Rubies

Tested with Ruby:

* 1.8.7
* 1.9.2
* 1.9.3
* 2.0.0-preview1

You have to setup rubygems.

## Installation

    gem install mhash

or in Gemfile (Bundler):

    gem 'mhash'

## Development/Debug

    git clone https://github.com/TibshoOT/ruby-mhash.git
    cd ruby-mhash/etx/mhash
    [edit source files]
    ruby extconf.rb
    make
    irb -r ./mhash.so
    [test it !]
    [pull request]


## Documentation

Just require mhash library and go !

These are implemented hashes:

* gost
* crc32
* md5
* sha1
* haval256
* ripemd160
* tiger192
* gost
* crc32b
* haval224
* haval192
* haval160
* haval128
* tiger128
* tiger160
* sha256
* adler32
* sha224
* sha512
* sha384
* whirlpool
* ripemd128
* ripemd256
* ripemd320
* snefru128
* snefru256

If you just want to have a nibble digest:

```ruby

require 'mhash'

hash = Mhash.gost("Hello\n\n")
puts hash
=> "\x89\r\x02\xF9*\xF7\xD7V\x82\xD4\xC3\x15\xEC\xA2\xF5\x8E~\x9E\xD0\x8D\xFC\xF1\xC0O\xC4\x16\xB0HOE\x1D\x8D"
```

If you want an hexdigest:

```ruby

require 'mhash'

# Using gost nibble digest as previously:
hash = Mhash.gost("Hello\n\n").unpack("H*").first
puts hash
=> "890d02f92af7d75682d4c315eca2f58e7e9ed08dfcf1c04fc416b0484f451d8d"
# Using ! methods:
hash = Mhash.gost!("Hello\n\n")
puts hash
=> "890d02f92af7d75682d4c315eca2f58e7e9ed08dfcf1c04fc416b0484f451d8d"
```

## Want a feature ? Problem ?

Open an issue ;)
