#!/usr/bin/env ruby
Dir["./src/*.rb"].each {|file|
  require file
}

require 'test/unit'

Dir["./test/*.rb"].each {|file|
  require file
}