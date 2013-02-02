#ifndef __MHASH_FUNCTIONS__
#define __MHASH_FUNCTIONS__

  VALUE mhash_rb_digest(VALUE self, VALUE hash_type, VALUE data_to_hash);

  VALUE mhash_rb_crc32(VALUE self, VALUE data_to_hash);
  VALUE mhash_rb_md5(VALUE self, VALUE data_to_hash);
  VALUE mhash_rb_sha1(VALUE self, VALUE data_to_hash);
  VALUE mhash_rb_haval256(VALUE self, VALUE data_to_hash);
  VALUE mhash_rb_ripemd160(VALUE self, VALUE data_to_hash);
  VALUE mhash_rb_tiger192(VALUE self, VALUE data_to_hash);
  VALUE mhash_rb_gost(VALUE self, VALUE data_to_hash);
  VALUE mhash_rb_crc32b(VALUE self, VALUE data_to_hash);
  VALUE mhash_rb_haval224(VALUE self, VALUE data_to_hash);
  VALUE mhash_rb_haval192(VALUE self, VALUE data_to_hash);
  VALUE mhash_rb_haval160(VALUE self, VALUE data_to_hash);
  VALUE mhash_rb_haval128(VALUE self, VALUE data_to_hash);
  VALUE mhash_rb_tiger128(VALUE self, VALUE data_to_hash);
  VALUE mhash_rb_tiger160(VALUE self, VALUE data_to_hash);
  VALUE mhash_rb_sha256(VALUE self, VALUE data_to_hash);
  VALUE mhash_rb_adler32(VALUE self, VALUE data_to_hash);
  VALUE mhash_rb_sha224(VALUE self, VALUE data_to_hash);
  VALUE mhash_rb_sha512(VALUE self, VALUE data_to_hash);
  VALUE mhash_rb_sha384(VALUE self, VALUE data_to_hash);
  VALUE mhash_rb_whirlpool(VALUE self, VALUE data_to_hash);
  VALUE mhash_rb_ripemd128(VALUE self, VALUE data_to_hash);
  VALUE mhash_rb_ripemd256(VALUE self, VALUE data_to_hash);
  VALUE mhash_rb_ripemd320(VALUE self, VALUE data_to_hash);
  VALUE mhash_rb_snefru128(VALUE self, VALUE data_to_hash);
  VALUE mhash_rb_snefru256(VALUE self, VALUE data_to_hash);

#endif
