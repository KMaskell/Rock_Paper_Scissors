feature 'Enter name' do
    scenario 'submitting name' do
      visit('/')
      fill_in :player_name, with: 'Kat'
      click_button 'Submit'
      expect(page).to have_content "It's YOU Kat vs. ME the computer!"
    end
  end