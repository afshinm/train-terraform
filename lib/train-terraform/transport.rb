require 'train-terraform/connection'

module TrainPlugins
  module Terraform
    class Transport < Train.plugin(1)
      name 'terraform'
      option :terraform_plan_path, default: ENV['TERRAFORM_PLAN_PATH']
      def connection(_instance_opts = nil)
        @connection ||= TrainPlugins::Terraform::Connection.new(@options)
      end
    end
  end
end
