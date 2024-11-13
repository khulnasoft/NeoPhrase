describe Fastlane::Actions::TranslateGptAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The translate_gpt plugin is working!")
      Fastlane::Actions::TranslateGptAction.run(nil)
    end
  
    it 'translates text correctly' do
      params = { api_token: 'test_token', source_file: 'test.strings', target_language: 'fr' }
      expect(Fastlane::Actions::TranslateGptAction.run(params)).to include(:success)
    end
  end
end
