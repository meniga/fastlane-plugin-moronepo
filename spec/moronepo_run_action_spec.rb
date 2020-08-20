describe Fastlane::Actions::MoronepoRunAction do
  describe 'moronepo_activate' do
    it 'should run proper shell command' do
      expect(Fastlane::Actions)
        .to receive(:sh)
        .with("flutter pub global run moronepo run -- flutter packages get")

      ActionRunner.moronepo_run("arguments: 'flutter packages get'")
    end

    it 'should run shell command with working_directory param' do
      expect(Fastlane::Actions)
        .to receive(:sh)
        .with("flutter pub global run moronepo --working-directory nepo_dir run -- flutter packages get")

      ActionRunner.moronepo_run("working_directory: 'nepo_dir', arguments: 'flutter packages get'")
    end

    it 'should run shell command with project param' do
      expect(Fastlane::Actions)
        .to receive(:sh)
        .with("flutter pub global run moronepo --project app run -- flutter packages get")

      ActionRunner.moronepo_run("project: 'app', arguments: 'flutter packages get'")
    end

    it 'should run shell command with filter param' do
      expect(Fastlane::Actions)
        .to receive(:sh)
        .with("flutter pub global run moronepo --filter !isRoot,hasTests run -- flutter test")

      ActionRunner.moronepo_run("filter: ['!isRoot', 'hasTests'], arguments: 'flutter test'")
    end
  end
end
