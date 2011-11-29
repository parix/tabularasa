require 'rubygems'
require 'echoe'

Echoe.new('tabularasa', '0.2.0') do |p|
  p.summary         = "Gives the ability to convert homogeneous activerecord and/or hash objects into csv"
  p.description     = "This Rails gem gives you the ability to call to_csv to a collection of homogenous activerecords and/or hashes"
  p.url             = "https://github.com/callenrosario/tabularasa"
  p.author          = "Chris Rosario"
  p.email           = "callenrosario@gmail.com"
  p.ignore_pattern  = ["tmp/*", "script/*"]
  p.runtime_dependencies = []
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
