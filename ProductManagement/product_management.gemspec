require_relative "lib/product_management/version"

Gem::Specification.new do |spec|
  spec.name        = "product_management"
  spec.version     = ProductManagement::VERSION
  spec.authors     = ["davidsth"]
  spec.email       = ["1936038+davidsth@users.noreply.github.com"]
  spec.homepage    = "http://example.com"
  spec.summary     = "Summary of ProductManagement."
  spec.description = "Description of ProductManagement."

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.7.2"
end
