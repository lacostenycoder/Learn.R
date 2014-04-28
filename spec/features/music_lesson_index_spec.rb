require 'spec_helper'

feature "A Music Lessons Page shows Lessons" do

    background do
    visit("/")
    click_link("Sign up")
    fill_in("Email", with: 'john@doe.com')
    fill_in("Name", with: 'John Doe')
    fill_in("Username", with: 'jdoe')
    fill_in("Password", with: 'johndoe123')
    visit("/")
  end

  scenario "should display the titles and categories of the lessons" do
    expect(page).to have_content("Scales")
    expect(page).to have_content("Major Scale")

  end

  scenario "Clicking on a music lesson link should take you to the appropriate lesson" do
    click_link("Lesson 1")
    expect(page).to have_content("Lesson 1")
  end

end
