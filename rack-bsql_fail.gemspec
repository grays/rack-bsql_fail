# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rack-bsql_fail}
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jason L Perry"]
  s.date = %q{2009-12-22}
  s.description = %q{Security Metrics uses a flawed method to test for blind SQL injections, this middleware gives a dummy response to that test.}
  s.email = %q{jasper@ambethia.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.md"
  ]
  s.files = [
    ".gitignore",
     "LICENSE",
     "README.md",
     "Rakefile",
     "VERSION",
     "lib/rack/bsql_fail.rb",
     "rack-bsql_fail.gemspec",
     "test/rack/bsql_fail_test.rb",
     "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/ambethia/rack-bsql_fail}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Hack to fix a flawed test for SQL injections}
  s.test_files = [
    "test/rack/bsql_fail_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

