# frozen_string_literal: true

require_relative "lib/stockr/version"

Gem::Specification.new do |spec|
  spec.name = "stockr"
  spec.version = Stockr::VERSION
  spec.authors = ["Mark Merritt"]
  spec.email = ["markmerritt804@gmail.com"]

  spec.summary = "Retrieve financial market data with Ruby."
  spec.description = "Provides an easy way to retrieve financial data for stocks, ETFs, commodities, and more."
  spec.homepage = "https://github.com/marksmerritt/stockr"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/marksmerritt/stockr"
  spec.metadata["changelog_uri"] = "https://github.com/marksmerritt/stockr/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end

  spec.add_dependency "faraday", "~> 2.7"

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
