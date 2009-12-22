require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "rack-bsql_fail"
    gem.summary = %Q{Hack to fix a flawed test for SQL injections}
    gem.description = %Q{Security Metrics uses a flawed method to test for blind SQL injections, this middleware gives a dummy response to that test.}
    gem.email = "jasper@ambethia.com"
    gem.homepage = "http://github.com/ambethia/rack-bsql_fail"
    gem.authors = ["Jason L Perry"]
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

task :test => :check_dependencies
task :default => :test

