#include <ruby.h>
#include "module_definitions.h"
#include "module_functions.h"

void mhash_define_consts(VALUE *m_mhash)
{
  rb_define_const(*m_mhash, "MHASH_CRC32", INT2NUM(0));
  rb_define_const(*m_mhash, "MHASH_MD5", INT2NUM(1));
  rb_define_const(*m_mhash, "MHASH_SHA1", INT2NUM(2));
  rb_define_const(*m_mhash, "MHASH_HAVAL256", INT2NUM(3));
  rb_define_const(*m_mhash, "MHASH_RIPEMD160", INT2NUM(5));
  rb_define_const(*m_mhash, "MHASH_TIGER192", INT2NUM(7));
  rb_define_const(*m_mhash, "MHASH_GOST", INT2NUM(8));
  rb_define_const(*m_mhash, "MHASH_CRC32B", INT2NUM(9));
  rb_define_const(*m_mhash, "MHASH_HAVAL224", INT2NUM(10));
  rb_define_const(*m_mhash, "MHASH_HAVAL192", INT2NUM(11));
  rb_define_const(*m_mhash, "MHASH_HAVAL160", INT2NUM(12));
  rb_define_const(*m_mhash, "MHASH_HAVAL128", INT2NUM(13));
  rb_define_const(*m_mhash, "MHASH_TIGER128", INT2NUM(14));
  rb_define_const(*m_mhash, "MHASH_TIGER160", INT2NUM(15));
  rb_define_const(*m_mhash, "MHASH_SHA256", INT2NUM(17));
  rb_define_const(*m_mhash, "MHASH_ADLER32", INT2NUM(18));
  rb_define_const(*m_mhash, "MHASH_SHA224", INT2NUM(19));
  rb_define_const(*m_mhash, "MHASH_SHA512", INT2NUM(20));
  rb_define_const(*m_mhash, "MHASH_SHA384", INT2NUM(21));
  rb_define_const(*m_mhash, "MHASH_WHIRLPOOL", INT2NUM(22));
  rb_define_const(*m_mhash, "MHASH_RIPEMD128", INT2NUM(23));
  rb_define_const(*m_mhash, "MHASH_RIPEMD256", INT2NUM(24));
  rb_define_const(*m_mhash, "MHASH_RIPEMD320", INT2NUM(25));
  rb_define_const(*m_mhash, "MHASH_SNEFRU128", INT2NUM(26));
  rb_define_const(*m_mhash, "MHASH_SNEFRU256", INT2NUM(27));
}

void mhash_define_functions(VALUE *m_mhash)
{
  rb_define_module_function(*m_mhash, "digest", mhash_rb_digest, 2);
  rb_define_module_function(*m_mhash, "crc32", mhash_rb_crc32, 1);
  rb_define_module_function(*m_mhash, "md5", mhash_rb_md5, 1);
  rb_define_module_function(*m_mhash, "sha1", mhash_rb_sha1, 1);
  rb_define_module_function(*m_mhash, "haval256", mhash_rb_haval256, 1);
  rb_define_module_function(*m_mhash, "ripemd160", mhash_rb_ripemd160, 1);
  rb_define_module_function(*m_mhash, "tiger192", mhash_rb_tiger192, 1);
  rb_define_module_function(*m_mhash, "gost", mhash_rb_gost, 1);
  rb_define_module_function(*m_mhash, "crc32b", mhash_rb_crc32b, 1);
  rb_define_module_function(*m_mhash, "haval224", mhash_rb_haval224, 1);
  rb_define_module_function(*m_mhash, "haval192", mhash_rb_haval192, 1);
  rb_define_module_function(*m_mhash, "haval160", mhash_rb_haval160, 1);
  rb_define_module_function(*m_mhash, "haval128", mhash_rb_haval128, 1);
  rb_define_module_function(*m_mhash, "tiger128", mhash_rb_tiger128, 1);
  rb_define_module_function(*m_mhash, "tiger160", mhash_rb_tiger160, 1);
  rb_define_module_function(*m_mhash, "sha256", mhash_rb_sha256, 1);
  rb_define_module_function(*m_mhash, "adler32", mhash_rb_adler32, 1);
  rb_define_module_function(*m_mhash, "sha224", mhash_rb_sha224, 1);
  rb_define_module_function(*m_mhash, "sha512", mhash_rb_sha512, 1);
  rb_define_module_function(*m_mhash, "sha384", mhash_rb_sha384, 1);
  rb_define_module_function(*m_mhash, "whirlpool", mhash_rb_whirlpool, 1);
  rb_define_module_function(*m_mhash, "ripemd128", mhash_rb_ripemd128, 1);
  rb_define_module_function(*m_mhash, "ripemd256", mhash_rb_ripemd256, 1);
  rb_define_module_function(*m_mhash, "ripemd320", mhash_rb_ripemd320, 1);
  rb_define_module_function(*m_mhash, "snefru128", mhash_rb_snefru128, 1);
  rb_define_module_function(*m_mhash, "snefru256", mhash_rb_snefru256, 1);
}
