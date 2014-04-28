require 'spec_helper'

feature 'Page should display list of Lessons started or completed' do


  background do
    new_user = User.create({email: "somekid@fakemail.com", name: "Matt farts", username: "somekid", password: "butts", password_confirmation: "butts"})
    sign_in("somekid@fakemail.com", "butts")
  end

  scenario "should take us to the code lesson when clicked" do
    click_link("Code Lesson 1")
    expect(page).to have_content("Welcome to Code Lesson 1")
  end

  scenario "should take us to the music lesson when clicked" do
    click_link("Music Lesson 1")
    expect(page).to have_content("Welcome to Music Lesson 1")
  end

end
