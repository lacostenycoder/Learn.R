require 'spec_helper'

feature 'Page should display list of Lessons started or completed' do

  background do
    visit("/user")
    click_link("Lesson 1")
  end

  scenario "should take us to the lesson when clicked" do
    click_button("Code Lesson 1")
    expect(page).to have_content("Welcome to Lesson 1")
  end


end
