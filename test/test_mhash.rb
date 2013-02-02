require 'test/unit'
require 'mhash'

class TestMhash < Test::Unit::TestCase

    def setup
      @data = "hello\n\n"
    end

    def test_gost_hash
        hash = Mhash.ghost(@data)
        valid_digest = 'a2c0810ccbb997eb2e029e7e4186535ef4efae43fdcb49afb4933303f649f8db'
        assert_equal(valid_digest, hash.unpack("H*").first)
    end

    def test_tiger192_hash
        hash = Mhash.tiger192(@data)
        valid_digest = '3655e96f537401e1c5ac4197ac22594e6d0a740c664e7263'
        assert_equal(valid_digest, hash.unpack("H*").first)
    end

    def test_sha1_hash
        hash = Mhash.sha1(@data)
        valid_digest = '4588019fd3d2567f303815db6adfe489b2ee5f92'
        assert_equal(valid_digest, hash.unpack("H*").first)
    end

    def test_sha256_hash
        hash = Mhash.sha256(@data)
        valid_digest = '50adea61fa4e77ab111b814716097abfd05f83a207b47eb4529bbd4f54e111e0'
        assert_equal(valid_digest, hash.unpack("H*").first)
    end

    def test_md5_hash
        hash = Mhash.md5(@data)
        valid_digest = '14e273e6f416c4b90a071f59ac01206a'
        assert_equal(valid_digest, hash.unpack("H*").first)
    end

    def test_whirlpool_hash
        hash = Mhash.whirlpool(@data)
        valid_digest = 'adc277e898e7164962c1674c0c3984169534630428364dd43fc7e4e3e7222b6ccf7b7c4656f972f392d5580797b70125780ac860cb84de6f55ed043277d545d3'
        assert_equal(valid_digest, hash.unpack("H*").first)
    end

    def test_ripemd160_hash
        hash = Mhash.ripemd160(@data)
        valid_digest = '52985141506d19e443281ad5c6e058871bb2f765'
        assert_equal(valid_digest, hash.unpack("H*").first)
    end

    def test_haval256_hash
        hash = Mhash.haval256(@data)
        valid_digest = '1b3aa948d5d867964d72b9320a648050725e2daac5898c2d9f09512b99e5f72f'
        assert_equal(valid_digest, hash.unpack("H*").first)
    end

    def test_adler32_hash
        hash = Mhash.adler32(@data)
        valid_digest = '2902740a'
        assert_equal(valid_digest, hash.unpack("H*").first)
    end

    def test_snefru256_hash
        hash = Mhash.snefru256(@data)
        valid_digest = 'f33eb2a3152af27e719474e8888da43c53b1ea7a629796eb7a67ecc539fc29a8'
        assert_equal(valid_digest, hash.unpack("H*").first)
    end

end
