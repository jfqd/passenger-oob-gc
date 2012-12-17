# -*- encoding: utf-8 -*-
#
# to publish the gem to rubygems.org run:
# rake build
# gem push pkg/passenger-oob-gc-0.0.1.gem
#
# to install locally from gem run:
# gem install pkg/passenger-oob-gc-0.0.1.gem
#
Gem::Specification.new do |s|
  s.name        = "passenger-oob-gc"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Stefan Husch"]
  s.email       = ["s.husch@qutic.com"]
  s.homepage    = "https://github.com/jfqd/passenger-oob-gc"
  s.summary     = %q{Run GC outside of the Passenger request cycle}
  s.description = %q{Run the Ruby Garbage Collection (GC) outside of the Passenger request cycle.}

  s.add_dependency('passenger', '>= 3.0.11')

  s.rubyforge_project = "passenger-oob-gc"
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
