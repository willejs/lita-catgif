Gem::Specification.new do |spec|
  spec.name          = "lita-catgif"
  spec.version       = "0.0.1"
  spec.authors       = ["Will Salt"]
  spec.email         = ["williamejsalt@gmail.com"]
  spec.description   = %q{A Lita handler that displays awesome animated cat gifs.}
  spec.summary       = %q{A Lita handler that displays awesome animated cat gifs.}
  spec.homepage      = "https://github.com/willejs/lita-catgif"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 2.6"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 3.0.0.beta2"
end
