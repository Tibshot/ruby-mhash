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

or for development:

    git clone https://github.com/TibshoOT/ruby-mhash.git
    cd ruby-mhash/etx/mhash
    [edit source files]
    ruby extconf.rb
    make
    irb -r ./mhash.so
    [test it !]


## Documentation

Just require mhash library and go !

Mhash's module functions are explicit...

```ruby

  require 'mhash'

  Mhash.gost("this is a test !")
  Mhash.crc32("this is a test !")
  Mhash.md5("this is a test !")
  Mhash.sha1("this is a test !")
  Mhash.haval256("this is a test !")
  Mhash.ripemd160("this is a test !")
  Mhash.tiger192("this is a test !")
  Mhash.gost("this is a test !")
  Mhash.crc32b("this is a test !")
  Mhash.haval224("this is a test !")
  Mhash.haval192("this is a test !")
  Mhash.haval160("this is a test !")
  Mhash.haval128("this is a test !")
  Mhash.tiger128("this is a test !")
  Mhash.tiger160("this is a test !")
  Mhash.sha256("this is a test !")
  Mhash.adler32("this is a test !")
  Mhash.sha224("this is a test !")
  Mhash.sha512("this is a test !")
  Mhash.sha384("this is a test !")
  Mhash.whirlpool("this is a test !")
  Mhash.ripemd128("this is a test !")
  Mhash.ripemd256("this is a test !")
  Mhash.ripemd320("this is a test !")
  Mhash.snefru128("this is a test !")
  Mhash.snefru256("this is a test !")

```

## Want a feature ? Problem ?

Open an issue ;)
