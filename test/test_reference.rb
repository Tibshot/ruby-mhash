require 'test/unit'
require 'mhash'
require 'yaml'

class TestReference < Test::Unit::TestCase

  def setup
    @ref = YAML::load(File.open("#{Dir.pwd}/test/references.yml"))
    @value = @ref["test"]
  end

  def test_ref_crc32_hex
    hash = Mhash.crc32!(@value)
    assert_equal(@ref["crc32"]["py-mhash"], hash)
  end

  def test_ref_crc32_const
    const = Mhash::MHASH_CRC32
    assert_equal(@ref["crc32"]["const"], const)
  end

  def test_ref_md5_hex
    hash = Mhash.md5!(@value)
    assert_equal(@ref["md5"]["py-mhash"], hash)
  end

  def test_ref_md5_const
    const = Mhash::MHASH_MD5
    assert_equal(@ref["md5"]["const"], const)
  end

  def test_ref_sha1_hex
    hash = Mhash.sha1!(@value)
    assert_equal(@ref["sha1"]["py-mhash"], hash)
  end

  def test_ref_sha1_const
    const = Mhash::MHASH_SHA1
    assert_equal(@ref["sha1"]["const"], const)
  end

  def test_ref_haval256_hex
    hash = Mhash.haval256!(@value)
    assert_equal(@ref["haval256"]["py-mhash"], hash)
  end

  def test_ref_haval256_const
    const = Mhash::MHASH_HAVAL256
    assert_equal(@ref["haval256"]["const"], const)
  end

  def test_ref_ripemd160_hex
    hash = Mhash.ripemd160!(@value)
    assert_equal(@ref["ripemd160"]["py-mhash"], hash)
  end

  def test_ref_ripemd160_const
    const = Mhash::MHASH_RIPEMD160
    assert_equal(@ref["ripemd160"]["const"], const)
  end

  def test_ref_tiger192_hex
    hash = Mhash.tiger192!(@value)
    assert_equal(@ref["tiger192"]["py-mhash"], hash)
  end

  def test_ref_tiger192_const
    const = Mhash::MHASH_TIGER192
    assert_equal(@ref["tiger192"]["const"], const)
  end

  def test_ref_gost_hex
    hash = Mhash.gost!(@value)
    assert_equal(@ref["gost"]["py-mhash"], hash)
  end

  def test_ref_gost_const
    const = Mhash::MHASH_GOST
    assert_equal(@ref["gost"]["const"], const)
  end

  def test_ref_crc32b_hex
    hash = Mhash.crc32b!(@value)
    assert_equal(@ref["crc32b"]["py-mhash"], hash)
  end

  def test_ref_crc32b_const
    const = Mhash::MHASH_CRC32B
    assert_equal(@ref["crc32b"]["const"], const)
  end

  def test_ref_haval224_hex
    hash = Mhash.haval224!(@value)
    assert_equal(@ref["haval224"]["py-mhash"], hash)
  end

  def test_ref_haval224_const
    const = Mhash::MHASH_HAVAL224
    assert_equal(@ref["haval224"]["const"], const)
  end

  def test_ref_haval192_hex
    hash = Mhash.haval192!(@value)
    assert_equal(@ref["haval192"]["py-mhash"], hash)
  end

  def test_ref_haval192_const
    const = Mhash::MHASH_HAVAL192
    assert_equal(@ref["haval192"]["const"], const)
  end

  def test_ref_haval160_hex
    hash = Mhash.haval160!(@value)
    assert_equal(@ref["haval160"]["py-mhash"], hash)
  end

  def test_ref_haval160_const
    const = Mhash::MHASH_HAVAL160
    assert_equal(@ref["haval160"]["const"], const)
  end

  def test_ref_haval128_hex
    hash = Mhash.haval128!(@value)
    assert_equal(@ref["haval128"]["py-mhash"], hash)
  end

  def test_ref_haval128_const
    const = Mhash::MHASH_HAVAL128
    assert_equal(@ref["haval128"]["const"], const)
  end

  def test_ref_tiger128_hex
    hash = Mhash.tiger128!(@value)
    assert_equal(@ref["tiger128"]["py-mhash"], hash)
  end

  def test_ref_tiger128_const
    const = Mhash::MHASH_TIGER128
    assert_equal(@ref["tiger128"]["const"], const)
  end

  def test_ref_tiger160_hex
    hash = Mhash.tiger160!(@value)
    assert_equal(@ref["tiger160"]["py-mhash"], hash)
  end

  def test_ref_tiger160_const
    const = Mhash::MHASH_TIGER160
    assert_equal(@ref["tiger160"]["const"], const)
  end

  def test_ref_sha256_hex
    hash = Mhash.sha256!(@value)
    assert_equal(@ref["sha256"]["py-mhash"], hash)
  end

  def test_ref_sha256_const
    const = Mhash::MHASH_SHA256
    assert_equal(@ref["sha256"]["const"], const)
  end

  def test_ref_adler32_hex
    hash = Mhash.adler32!(@value)
    assert_equal(@ref["adler32"]["py-mhash"], hash)
  end

  def test_ref_adler32_const
    const = Mhash::MHASH_ADLER32
    assert_equal(@ref["adler32"]["const"], const)
  end

  def test_ref_sha224_hex
    hash = Mhash.sha224!(@value)
    assert_equal(@ref["sha224"]["py-mhash"], hash)
  end

  def test_ref_sha224_const
    const = Mhash::MHASH_SHA224
    assert_equal(@ref["sha224"]["const"], const)
  end

  def test_ref_sha512_hex
    hash = Mhash.sha512!(@value)
    assert_equal(@ref["sha512"]["py-mhash"], hash)
  end

  def test_ref_sha512_const
    const = Mhash::MHASH_SHA512
    assert_equal(@ref["sha512"]["const"], const)
  end

  def test_ref_sha384_hex
    hash = Mhash.sha384!(@value)
    assert_equal(@ref["sha384"]["py-mhash"], hash)
  end

  def test_ref_sha384_const
    const = Mhash::MHASH_SHA384
    assert_equal(@ref["sha384"]["const"], const)
  end

  def test_ref_whirlpool_hex
    hash = Mhash.whirlpool!(@value)
    assert_equal(@ref["whirlpool"]["py-mhash"], hash)
  end

  def test_ref_whirlpool_const
    const = Mhash::MHASH_WHIRLPOOL
    assert_equal(@ref["whirlpool"]["const"], const)
  end

  def test_ref_ripemd128_hex
    hash = Mhash.ripemd128!(@value)
    assert_equal(@ref["ripemd128"]["py-mhash"], hash)
  end

  def test_ref_ripemd128_const
    const = Mhash::MHASH_RIPEMD128
    assert_equal(@ref["ripemd128"]["const"], const)
  end

  def test_ref_ripemd256_hex
    hash = Mhash.ripemd256!(@value)
    assert_equal(@ref["ripemd256"]["py-mhash"], hash)
  end

  def test_ref_ripemd256_const
    const = Mhash::MHASH_RIPEMD256
    assert_equal(@ref["ripemd256"]["const"], const)
  end

  def test_ref_ripemd320_hex
    hash = Mhash.ripemd320!(@value)
    assert_equal(@ref["ripemd320"]["py-mhash"], hash)
  end

  def test_ref_ripemd320_const
    const = Mhash::MHASH_RIPEMD320
    assert_equal(@ref["ripemd320"]["const"], const)
  end

  def test_ref_snefru128_hex
    hash = Mhash.snefru128!(@value)
    assert_equal(@ref["snefru128"]["py-mhash"], hash)
  end

  def test_ref_snefru128_const
    const = Mhash::MHASH_SNEFRU128
    assert_equal(@ref["snefru128"]["const"], const)
  end

  def test_ref_snefru256_hex
    hash = Mhash.snefru256!(@value)
    assert_equal(@ref["snefru256"]["py-mhash"], hash)
  end

  def test_ref_snefru256_const
    const = Mhash::MHASH_SNEFRU256
    assert_equal(@ref["snefru256"]["const"], const)
  end

end
