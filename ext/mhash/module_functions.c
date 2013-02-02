#include <ruby.h>
#include <mhash.h>
#include "module_functions.h"

VALUE mhash_rb_digest(VALUE self, VALUE hash_type, VALUE data_to_hash)
{
    MHASH td;
    VALUE rb_str_hash;
    unsigned int i;
    unsigned int size_of_hash;
    char *hash;

    td = mhash_init(FIX2INT(hash_type));
    if (td == MHASH_FAILED)
       rb_raise(rb_eException, "Unable to init mhash - MHASH_FAILED");
    mhash(td, RSTRING_PTR(data_to_hash), RSTRING_LEN(data_to_hash));
    hash = mhash_end(td);
    size_of_hash = mhash_get_block_size(FIX2INT(hash_type));
    rb_str_hash = rb_str_new2("");
    for (i = 0; i < size_of_hash; i++) {
      rb_str_hash = rb_str_cat(rb_str_hash, (const char *) &hash[i], 1);
    }
    free(hash);
    return (rb_str_hash);
}

VALUE mhash_rb_crc32(VALUE self, VALUE data_to_hash)
{
  return (mhash_rb_digest(self, INT2NUM(0), data_to_hash));
}

VALUE mhash_rb_md5(VALUE self, VALUE data_to_hash)
{
  return (mhash_rb_digest(self, INT2NUM(1), data_to_hash));
}

VALUE mhash_rb_sha1(VALUE self, VALUE data_to_hash)
{
  return (mhash_rb_digest(self, INT2NUM(2), data_to_hash));
}

VALUE mhash_rb_haval256(VALUE self, VALUE data_to_hash)
{
  return (mhash_rb_digest(self, INT2NUM(3), data_to_hash));
}

VALUE mhash_rb_ripemd160(VALUE self, VALUE data_to_hash)
{
  return (mhash_rb_digest(self, INT2NUM(5), data_to_hash));
}

VALUE mhash_rb_tiger192(VALUE self, VALUE data_to_hash)
{
  return (mhash_rb_digest(self, INT2NUM(7), data_to_hash));
}

VALUE mhash_rb_ghost(VALUE self, VALUE data_to_hash)
{
  return (mhash_rb_digest(self, INT2NUM(8), data_to_hash));
}

VALUE mhash_rb_crc32b(VALUE self, VALUE data_to_hash)
{
  return (mhash_rb_digest(self, INT2NUM(9), data_to_hash));
}

VALUE mhash_rb_haval224(VALUE self, VALUE data_to_hash)
{
  return (mhash_rb_digest(self, INT2NUM(10), data_to_hash));
}

VALUE mhash_rb_haval192(VALUE self, VALUE data_to_hash)
{
  return (mhash_rb_digest(self, INT2NUM(11), data_to_hash));
}

VALUE mhash_rb_haval160(VALUE self, VALUE data_to_hash)
{
  return (mhash_rb_digest(self, INT2NUM(12), data_to_hash));
}

VALUE mhash_rb_haval128(VALUE self, VALUE data_to_hash)
{
  return (mhash_rb_digest(self, INT2NUM(13), data_to_hash));
}

VALUE mhash_rb_tiger128(VALUE self, VALUE data_to_hash)
{
  return (mhash_rb_digest(self, INT2NUM(14), data_to_hash));
}

VALUE mhash_rb_tiger160(VALUE self, VALUE data_to_hash)
{
  return (mhash_rb_digest(self, INT2NUM(15), data_to_hash));
}

VALUE mhash_rb_sha256(VALUE self, VALUE data_to_hash)
{
  return (mhash_rb_digest(self, INT2NUM(17), data_to_hash));
}

VALUE mhash_rb_adler32(VALUE self, VALUE data_to_hash)
{
  return (mhash_rb_digest(self, INT2NUM(18), data_to_hash));
}

VALUE mhash_rb_sha224(VALUE self, VALUE data_to_hash)
{
  return (mhash_rb_digest(self, INT2NUM(19), data_to_hash));
}

VALUE mhash_rb_sha512(VALUE self, VALUE data_to_hash)
{
  return (mhash_rb_digest(self, INT2NUM(20), data_to_hash));
}

VALUE mhash_rb_sha384(VALUE self, VALUE data_to_hash)
{
  return (mhash_rb_digest(self, INT2NUM(21), data_to_hash));
}

VALUE mhash_rb_whirlpool(VALUE self, VALUE data_to_hash)
{
  return (mhash_rb_digest(self, INT2NUM(22), data_to_hash));
}

VALUE mhash_rb_ripemd128(VALUE self, VALUE data_to_hash)
{
  return (mhash_rb_digest(self, INT2NUM(23), data_to_hash));
}

VALUE mhash_rb_ripemd256(VALUE self, VALUE data_to_hash)
{
  return (mhash_rb_digest(self, INT2NUM(24), data_to_hash));
}

VALUE mhash_rb_ripemd320(VALUE self, VALUE data_to_hash)
{
  return (mhash_rb_digest(self, INT2NUM(25), data_to_hash));
}

VALUE mhash_rb_snefru128(VALUE self, VALUE data_to_hash)
{
  return (mhash_rb_digest(self, INT2NUM(26), data_to_hash));
}

VALUE mhash_rb_snefru256(VALUE self, VALUE data_to_hash)
{
  return (mhash_rb_digest(self, INT2NUM(27), data_to_hash));
}
