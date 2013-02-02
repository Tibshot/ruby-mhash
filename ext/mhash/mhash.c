#include <ruby.h>
#include <mhash.h>
#include "module_definitions.h"

void Init_mhash();
static VALUE m_mhash;

void Init_mhash()
{
  static VALUE m_hash;

  m_mhash = rb_define_module("Mhash");

  mhash_define_consts(&m_mhash);
  mhash_define_functions(&m_mhash);
}
