# encoding: UTF-8
require 'test/unit'
require 'mhash'

class TestDigestCompat < Test::Unit::TestCase

  def test_compat_crc32
    d = Mhash.crc32("hihitesttest").unpack("H*").first
    h = Mhash.crc32!("hihitesttest")
    assert_equal(d, h)
  end

  def test_compat_md5
    d = Mhash.md5("trublublublu").unpack("H*").first
    h = Mhash.md5!("trublublublu")
    assert_equal(d, h)
  end

  def test_compat_sha1
    d = Mhash.sha1("hello_world-").unpack("H*").first
    h = Mhash.sha1!("hello_world-")
    assert_equal(d, h)
  end

  def test_compat_haval256
    d = Mhash.haval256("\\test={}").unpack("H*").first
    h = Mhash.haval256!("\\test={}")
    assert_equal(d, h)
  end

  def test_compat_ripemd160
    d = Mhash.ripemd160("\nFRAK\r").unpack("H*").first
    h = Mhash.ripemd160!("\nFRAK\r")
    assert_equal(d, h)
  end

  def test_compat_tiger192
    d = Mhash.tiger192("**(BSD FUR TEH GLAWRY)**").unpack("H*").first
    h = Mhash.tiger192!("**(BSD FUR TEH GLAWRY)**")
    assert_equal(d, h)
  end

  def test_compat_gost
    d = Mhash.gost("^&*!@$").unpack("H*").first
    h = Mhash.gost!("^&*!@$")
    assert_equal(d, h)
  end

  def test_compat_crc32b
    d = Mhash.crc32b("Test...again :(").unpack("H*").first
    h = Mhash.crc32b!("Test...again :(")
    assert_equal(d, h)
  end

  def test_compat_haval224
    d = Mhash.haval224("Test...again :(").unpack("H*").first
    h = Mhash.haval224!("Test...again :(")
    assert_equal(d, h)
  end

  def test_compat_haval192
    d = Mhash.haval192("Test...again :(").unpack("H*").first
    h = Mhash.haval192!("Test...again :(")
    assert_equal(d, h)
  end

  def test_compat_haval160
    d = Mhash.haval160("Test...again :(").unpack("H*").first
    h = Mhash.haval160!("Test...again :(")
    assert_equal(d, h)
  end

  def test_compat_haval128
    d = Mhash.haval128("Test...again :(").unpack("H*").first
    h = Mhash.haval128!("Test...again :(")
    assert_equal(d, h)
  end
  
  def test_compat_tiger128
    d = Mhash.tiger128("Risin'up back on the street\nDid my time, took my chances\nWent the distance now i'm back on my feet\njust a man and his will to survive\nso many times it happens too fast\nYou trade your passion for glory\nDon't lose your grip on the dreams of the past\nYou must fight just to keep them alive").unpack("H*").first
    h = Mhash.tiger128!("Risin'up back on the street\nDid my time, took my chances\nWent the distance now i'm back on my feet\njust a man and his will to survive\nso many times it happens too fast\nYou trade your passion for glory\nDon't lose your grip on the dreams of the past\nYou must fight just to keep them alive")
    assert_equal(d, h)
  end

  def test_compat_tiger160
    d = Mhash.tiger160("It's the Eye of the Tiger\nIt's the thrill of the fight\nRisin'up to the challenge of our rival\nAnd the last known survivor\nStalks his prey in the night\nAnd he's watching us all\nwith the Eye of the Tiger").unpack("H*").first
    h = Mhash.tiger160!("It's the Eye of the Tiger\nIt's the thrill of the fight\nRisin'up to the challenge of our rival\nAnd the last known survivor\nStalks his prey in the night\nAnd he's watching us all\nwith the Eye of the Tiger")
    assert_equal(d, h)
  end

  def test_compat_md4
    d = Mhash.md4("1234567890").unpack("H*").first
    h = Mhash.md4!("1234567890")
    assert_equal(d, h)
  end

  def test_compat_sha256
    d = Mhash.sha256("HATERS GONNA HATE").unpack("H*").first
    h = Mhash.sha256!("HATERS GONNA HATE")
    assert_equal(d, h)
  end

  def test_compat_adler32
    d = Mhash.adler32("COME AT ME BRO !").unpack("H*").first
    h = Mhash.adler32!("COME AT ME BRO !")
    assert_equal(d, h)
  end

  def test_compat_sha224
    d = Mhash.sha224("FLUSHFLUSHFLUSH").unpack("H*").first
    h = Mhash.sha224!("FLUSHFLUSHFLUSH")
    assert_equal(d, h)
  end

  def test_compat_sha512
    d = Mhash.sha512("Les algorithmes de la famille SHA-2, SHA-256, SHA-384 et SHA-512, sont décrits et publiés en compagnie de SHA-1 comme standard du gouvernement fédéral des États-unis").unpack("H*").first
    h = Mhash.sha512!("Les algorithmes de la famille SHA-2, SHA-256, SHA-384 et SHA-512, sont décrits et publiés en compagnie de SHA-1 comme standard du gouvernement fédéral des États-unis")
    assert_equal(d, h)
  end

  def test_compat_sha384
    d = Mhash.sha384("I HATE TESTS").unpack("H*").first
    h = Mhash.sha384!("I HATE TESTS")
    assert_equal(d, h)
  end

  def test_compat_whirlpool
    d = Mhash.whirlpool("TOASTER").unpack("H*").first
    h = Mhash.whirlpool!("TOASTER")
    assert_equal(d, h)
  end

  def test_compat_ripemd128
    d = Mhash.ripemd128("POKERFACE").unpack("H*").first
    h = Mhash.ripemd128!("POKERFACE")
    assert_equal(d, h)
  end

  def test_compat_ripemd256
    d = Mhash.ripemd256("I FRAKING HATE TESTS").unpack("H*").first
    h = Mhash.ripemd256!("I FRAKING HATE TESTS")
    assert_equal(d, h)
  end

  def test_compat_ripemd320
    d = Mhash.ripemd320("wololo!wololo!wololo!").unpack("H*").first
    h = Mhash.ripemd320!("wololo!wololo!wololo!")
    assert_equal(d, h)
  end

  def test_compat_snefru128
    d = Mhash.snefru128("HAIL TO THE KING !").unpack("H*").first
    h = Mhash.snefru128!("HAIL TO THE KING !")
    assert_equal(d, h)
  end

  def test_compat_snefru256
    d = Mhash.snefru256("I'VE GOT BALLS OF STEEL").unpack("H*").first
    h = Mhash.snefru256!("I'VE GOT BALLS OF STEEL")
    assert_equal(d, h)
  end

  def test_compat_md2
    d = Mhash.md2("AND CHEW BUBLEGUM").unpack("H*").first
    h = Mhash.md2!("AND CHEW BUBLEGUM")
    assert_equal(d, h)
  end

end
