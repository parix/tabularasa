# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{tabularasa}
  s.version = "0.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Chris Rosario}]
  s.date = %q{2011-11-29}
  s.description = %q{This Rails gem gives you the ability to call to_csv to a collection of homogenous activerecords and/or hashes}
  s.email = %q{callenrosario@gmail.com}
  s.extra_rdoc_files = [%q{README.rdoc}, %q{lib/tabularasa.rb}]
  s.files = [%q{MIT-LICENSE}, %q{README.rdoc}, %q{Rakefile}, %q{init.rb}, %q{lib/tabularasa.rb}, %q{tabularasa.gemspec}]
  s.homepage = %q{https://github.com/callenrosario/tabularasa}
  s.rdoc_options = [%q{--line-numbers}, %q{--inline-source}, %q{--title}, %q{Tabularasa}, %q{--main}, %q{README.rdoc}]
  s.require_paths = [%q{lib}]
  s.rubyforge_project = %q{tabularasa}
  s.rubygems_version = %q{1.8.6}
  s.summary = %q{Gives the ability to convert homogeneous activerecord and/or hash objects into csv}
  s.add_runtime_dependency(%q<activerecord>, [">= 0"])
  s.add_runtime_dependency(%q<fastercsv>, [">= 0"])
end
