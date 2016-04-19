# ruby-mhash [![Build Status](https://travis-ci.org/TibshoOT/ruby-mhash.png?branch=master)](https://travis-ci.org/TibshoOT/ruby-mhash)

[Mhash library](http://mhash.sourceforge.net/) wrapper for Ruby.

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
* 2.0.0
* 2.1.0

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

These are implemented hashes with their methods:

<table>
<tr>
  <th>Hash name (default bit-length)</th>
  <th>digest method</th>
  <th>hexdigest method</th>
</tr>
<tr>
  <th>CRC32</th>
  <td>Mhash.crc32("a simple test !")</td>
  <td>Mhash.crc32!("a simple test !")</td>
</tr>
<tr>
  <th>MD5 (128)</th>
  <td>Mhash.md5("a simple test !")</td>
  <td>Mhash.md5!("a simple test !")</td>
</tr>
<tr>
  <th>SHA1</th>
  <td>Mhash.sha1("a simple test !")</td>
  <td>Mhash.sha1!("a simple test !")</td>
</tr>
<tr>
  <th>HAVAL256</th>
  <td>Mhash.haval256("a simple test !")</td>
  <td>Mhash.haval256!("a simple test !")</td>
</tr>
<tr>
  <th>RIPEMD160</th>
  <td>Mhash.ripemd160("a simple test !")</td>
  <td>Mhash.ripemd160!("a simple test !")</td>
</tr>
<tr>
  <th>TIGER192</th>
  <td>Mhash.tiger192("a simple test !")</td>
  <td>Mhash.tiger192!("a simple test !")</td>
</tr>
<tr>
  <th>GOST (512)</th>
  <td>Mhash.gost("a simple test !")</td>
  <td>Mhash.gost!("a simple test !")</td>
</tr>
<tr>
  <th>CRC32B</th>
  <td>Mhash.crc32b("a simple test !")</td>
  <td>Mhash.crc32b!("a simple test !")</td>
</tr>
<tr>
  <th>HAVAL224</th>
  <td>Mhash.haval224("a simple test !")</td>
  <td>Mhash.haval224!("a simple test !")</td>
</tr>
<tr>
  <th>HAVAL192</th>
  <td>Mhash.haval192("a simple test !")</td>
  <td>Mhash.haval192!("a simple test !")</td>
</tr>
<tr>
  <th>HAVAL160</th>
  <td>Mhash.haval160("a simple test !")</td>
  <td>Mhash.haval160!("a simple test !")</td>
</tr>
<tr>
  <th>HAVAL128</th>
  <td>Mhash.haval128("a simple test !")</td>
  <td>Mhash.haval128!("a simple test !")</td>
</tr>
<tr>
  <th>TIGER128</th>
  <td>Mhash.tiger128("a simple test !")</td>
  <td>Mhash.tiger128!("a simple test !")</td>
</tr>
<tr>
  <th>TIGER160</th>
  <td>Mhash.tiger160("a simple test !")</td>
  <td>Mhash.tiger160!("a simple test !")</td>
</tr>
<tr>
  <th>MD4 (128)</th>
  <td>Mhash.md4("a simple test !")</td>
  <td>Mhash.md4!("a simple test !")</td>
</tr>
<tr>
  <th>SHA256</th>
  <td>Mhash.sha256("a simple test !")</td>
  <td>Mhash.sha256!("a simple test !")</td>
</tr>
<tr>
  <th>ADLER32</th>
  <td>Mhash.adler32("a simple test !")</td>
  <td>Mhash.adler32!("a simple test !")</td>
</tr>
<tr>
  <th>SHA224</th>
  <td>Mhash.sha224("a simple test !")</td>
  <td>Mhash.sha224!("a simple test !")</td>
</tr>
<tr>
  <th>SHA512</th>
  <td>Mhash.sha512("a simple test !")</td>
  <td>Mhash.sha512!("a simple test !")</td>
</tr>
<tr>
  <th>SHA384</th>
  <td>Mhash.sha384("a simple test !")</td>
  <td>Mhash.sha384!("a simple test !")</td>
</tr>
<tr>
  <th>WHIRLPOOL (512)</th>
  <td>Mhash.whirlpool("a simple test !")</td>
  <td>Mhash.whirlpool!("a simple test !")</td>
</tr>
<tr>
  <th>RIPEMD128</th>
  <td>Mhash.ripemd128("a simple test !")</td>
  <td>Mhash.ripemd128!("a simple test !")</td>
</tr>
<tr>
  <th>RIPEMD256</th>
  <td>Mhash.ripemd256("a simple test !")</td>
  <td>Mhash.ripemd256!("a simple test !")</td>
</tr>
<tr>
  <th>RIPEMD320</th>
  <td>Mhash.ripemd320("a simple test !")</td>
  <td>Mhash.ripemd320!("a simple test !")</td>
</tr>
<tr>
  <th>SNEFRU128</th>
  <td>Mhash.snefru128("a simple test !")</td>
  <td>Mhash.snefru128!("a simple test !")</td>
</tr>
<tr>
  <th>SNEFRU256</th>
  <td>Mhash.snefru256("a simple test !")</td>
  <td>Mhash.snefru256!("a simple test !")</td>
</tr>
<tr>
  <th>MD2 (128)</th>
  <td>Mhash.md2("a simple test !")</td>
  <td>Mhash.md2!("a simple test !")</td>
</tr>
</table>

### Examples

You can find all available hashes doing this:

```ruby

require 'mhash'

Mhash.constants
 => [:MHASH_CRC32, :MHASH_MD5, :MHASH_SHA1, :MHASH_HAVAL256, :MHASH_RIPEMD160,
     :MHASH_TIGER192, :MHASH_GOST, :MHASH_CRC32B, :MHASH_HAVAL224, :MHASH_HAVAL192,
     :MHASH_HAVAL160, :MHASH_HAVAL128, :MHASH_TIGER128, :MHASH_TIGER160, :MHASH_MD4,
     :MHASH_SHA256, :MHASH_ADLER32, :MHASH_SHA224, :MHASH_SHA512, :MHASH_SHA384,
     :MHASH_WHIRLPOOL, :MHASH_RIPEMD128, :MHASH_RIPEMD256, :MHASH_RIPEMD320,
     :MHASH_SNEFRU128, :MHASH_SNEFRU256, :MHASH_MD2, :VERSION]
```

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
