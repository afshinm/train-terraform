require 'train-terraform/platform'

module TrainPlugins
  module Terraform
    class Connection < Train::Plugins::Transport::BaseConnection
      include TrainPlugins::Terraform::Platform

      def initialize(options)
        msg = 'You need to set the Terraform plan path via \'export TERRAFORM_PLAN_PATH=.\''
        if options.nil? || options[:terraform_plan_path].nil?
          raise Train::TransportError, msg
        end

        super(options)
      end

      def resources
        Train::File::Local::Unix.new(self, options[:terraform_plan_path])
      end

    end
  end
end
