describe Fastlane::Actions::MoronepoAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The moronepo plugin is working!")

      Fastlane::Actions::MoronepoAction.run(nil)
    end
  end
end
