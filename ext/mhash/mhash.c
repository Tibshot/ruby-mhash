#include <ruby.h>
#include <mhash.h>
#include "mhash_ruby.h"
#include "module_definitions.h"

void Init_mhash()
{
  VALUE m_mhash;

  m_mhash = rb_define_module("Mhash");

  mhash_define_consts(&m_mhash);
  mhash_define_functions(&m_mhash);
}
