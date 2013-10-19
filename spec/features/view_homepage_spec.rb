require 'spec_helper'

feature 'View the homepage' do
  scenario 'learn about the website' do
    visit root_path
    expect(page).to         have_title 'Hashtag'
    expect(page.body).to    have_css '[data-role="description"]'
  end
end