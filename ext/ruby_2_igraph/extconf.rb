require 'mkmf'

extension_name = "igraph"

dir_config(extension_name)
unless have_library(extension_name)
  $stderr.puts "\nERROR: Cannot find the iGraph library, aborting."
  exit 1
end
unless have_header("igraph/igraph.h")
  $stderr.puts "\nERROR: Cannot find the iGraph header, aborting."
  exit 1
end

create_makefile(extension_name)
