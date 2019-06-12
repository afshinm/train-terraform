module TrainPlugins::Terraform
  module Platform
    def platform
      Train::Platforms.name('terraform').in_family('cloud')
      force_platform!('terraform', release: TrainPlugins::Terraform::VERSION)
    end
  end
end
