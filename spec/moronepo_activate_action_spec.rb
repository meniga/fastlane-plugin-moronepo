describe Fastlane::Actions::MoronepoActivateAction do
  describe 'moronepo_activate' do
    it 'should run proper shell command' do
      expect(Fastlane::Actions)
        .to receive(:sh)
        .with("flutter pub global activate moronepo")

      ActionRunner.moronepo_activate
    end
  end
end
