lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'train-terraform/version'

Gem::Specification.new do |spec|
  spec.name          = 'train-terraform'
  spec.version       = TrainPlugins::Terraform::VERSION
  spec.authors       = ['Afshin Mehrabani']
  spec.email         = ['afshin.meh@gmail.com']
  spec.summary       = "Terraform plugin for InSpec's Backend"
  spec.description   = 'This plugin provides the backend handling for InSpec to talk to Terraform'
  spec.homepage      = 'https://github.com/afshinm/train-terraform'
  spec.license       = 'Apache-2.0'
  spec.files = %w[
    README.md train-terraform.gemspec Gemfile
  ] + Dir.glob(
    'lib/**/*', File::FNM_DOTMATCH
  ).reject { |f| File.directory?(f) }
  spec.require_paths = ['lib']
  spec.add_dependency 'train', '~> 1.4'
end
