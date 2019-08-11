#require 'web_helpers'

describe 'Enter names' do
    it 'submitting names' do
      sign_in_and_play
      expect(page).to have_content 'Kat vs. ME the computer!'
    end
  end