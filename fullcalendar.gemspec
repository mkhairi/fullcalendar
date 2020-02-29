
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fullcalendar/version"

Gem::Specification.new do |spec|
  spec.name          = "fullcalendar"
  spec.version       = Fullcalendar::VERSION
  spec.authors       = ["mkhairi"]
  spec.email         = ["khairi@labs.my"]

  spec.summary       = %q{Gemified Fullcalendar, scheduler assets for rails and etc.}
  spec.description   = %q{Use Fullcalendar, scheduler in asset pipeline with ease}
  spec.homepage      = "https://github.com/mkhairi/fullcalendar"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'momentjs-rails', '~> 2.20.1'

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 13.0"
end
