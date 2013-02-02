require 'mkmf'

have_library('mhash') or raise
create_makefile('mhash/mhash')
