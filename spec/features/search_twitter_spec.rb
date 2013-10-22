require 'spec_helper'

feature 'Search Twitter for a term' do
  scenario 'searching by a hashtag' do
    visit root_path
    fill_in 'Search', with: 'Rails'
    click_button 'Search'
  end
end