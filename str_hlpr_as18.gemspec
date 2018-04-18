
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "str_hlpr_as18/version"

Gem::Specification.new do |spec|
  spec.name          = "str_hlpr_as18"
  spec.version       = StrHlprAs18::VERSION
  spec.authors       = ["Andrew Street"]
  spec.email         = ["andrew_street@live.com"]

  spec.summary       = "Useless string helpers"
  spec.homepage      = "https://github.com/adarkstreet/str_hlprs_as18"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
