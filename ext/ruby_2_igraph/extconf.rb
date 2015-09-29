require 'mkmf'

LIBDIR      = RbConfig::CONFIG['libdir']
INCLUDEDIR  = RbConfig::CONFIG['includedir']

HEADER_DIRS = [
  # First search /opt/local for macports
  '/opt/local/include',

  # Then search /usr/local for people that installed from source
  '/usr/local/include',

  # Check the ruby install locations
  INCLUDEDIR,

  # Finally fall back to /usr
  '/usr/include',
]

LIB_DIRS = [
  # First search /opt/local for macports
  '/opt/local/lib',

  # Then search /usr/local for people that installed from source
  '/usr/local/lib',

  # Check the ruby install locations
  LIBDIR,

  # Finally fall back to /usr
  '/usr/lib',
]

dir_config('igraph', HEADER_DIRS, LIB_DIRS)
# dir_config('igraph', '/usr/local/include', '/usr/local/lib')

unless find_header('igraph/igraph_centrality.h', *HEADER_DIRS)
  abort "\nERROR: Cannot find the iGraph header, please install iGraph."
end

unless find_library('igraph', 'igraph_betweenness', *LIB_DIRS)
  abort "\nERROR: Cannot find the iGraph library, please install iGraph."
end

create_makefile('igraph/igraph')
