# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "tabularasa"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Chris Rosario"]
  s.date = "2011-11-29"
  s.description = "This Rails gem gives you the ability to call to_csv to a collection of homogenous activerecords and/or hashes"
  s.email = "callenrosario@gmail.com"
  s.extra_rdoc_files = ["README.rdoc", "lib/tabularasa.rb"]
  s.files = ["MIT-LICENSE", "README.rdoc", "Rakefile", "init.rb", "lib/tabularasa.rb", "Manifest", "tabularasa.gemspec"]
  s.homepage = "https://github.com/callenrosario/tabularasa"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Tabularasa", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "tabularasa"
  s.rubygems_version = "1.8.11"
  s.summary = "Gives the ability to convert homogeneous activerecord and/or hash objects into csv"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
