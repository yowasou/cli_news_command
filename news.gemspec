# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'news/version'

Gem::Specification.new do |spec|
  spec.name          = "news"
  spec.version       = News::VERSION
  spec.authors       = ["yowasou"]
  spec.email         = ["jun.makita@gmail.com"]
  spec.summary       = %q{Show news!!}
  spec.description   = %q{Show news!!}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.add_dependency 'thor' # ここ追加

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
