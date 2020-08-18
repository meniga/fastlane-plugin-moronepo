module ActionRunner
  def self.moronepo_activate
    run_action("moronepo_activate", "")
  end

  def self.run_action(name, string_params)
    Fastlane::FastFile.new.parse("
      lane :test do
        #{name}(#{string_params})
      end
      ").runner.execute(:test)
  end
end
