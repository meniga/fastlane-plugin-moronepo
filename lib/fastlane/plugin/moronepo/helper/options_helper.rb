require 'fastlane_core'

module Fastlane
  module Helper
    class OptionsHelper
      def self.working_directory
        FastlaneCore::ConfigItem.new(key: :working_directory,
            env_name: "FL_MORONEPO_WORKING_DIRECTORY",
            description: "Specifies the working directory",
            optional: true,
            type: String)
      end
    end
  end
end
