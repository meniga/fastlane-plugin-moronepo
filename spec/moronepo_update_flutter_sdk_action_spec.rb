describe Fastlane::Actions::MoronepoUpdateFlutterSdkAction do
  describe 'moronepo_activate' do
    it 'should run proper shell command' do
      expect(Fastlane::Actions)
        .to receive(:sh)
        .with("flutter pub global run moronepo update-flutter-sdk")

      ActionRunner.moronepo_update_flutter_sdk("")
    end

    it 'should run shell command with working_directory param' do
      expect(Fastlane::Actions)
        .to receive(:sh)
        .with("flutter pub global run moronepo --working-directory nepo_dir update-flutter-sdk")

      ActionRunner.moronepo_update_flutter_sdk("working_directory: 'nepo_dir'")
    end
  end
end
