# frozen_string_literal: true

require_relative "lib/simple_null_object/version"

Gem::Specification.new do |spec|
  spec.name          = "simple_null_object"
  spec.version       = SimpleNullObject::VERSION
  spec.authors       = ["Shah Rukh"]
  spec.email         = ["shah.xhtml@yahoo.com"]

  spec.summary       = "Null Object Pattern which includes some db operation methods and user"
  spec.homepage      = "https://github.com/da-vinci-noob/simple_null_object"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/da-vinci-noob/simple_null_object"
  spec.metadata["changelog_uri"] = "https://github.com/da-vinci-noob/simple_null_object/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
