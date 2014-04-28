require 'spec_helper'

feature 'Page should display list of Lessons started or completed' do

  background do
    new_user = User.create({email: "somekid@fakemail.com",
                            name: "Matt farts",
                            username: "somekid",
                            password: "butts",
                            password_confirmation: "butts"})
    sign_in("somekid@fakemail.com", "butts")
    new_user.update(score: 40) # completed some lessons
  end

  scenario "should take us to code lesson 1 when clicked" do
    click_link("Code Lesson 1")
    expect(page).to have_content("Welcome to Code Lesson 1")
  end

  scenario "should take us to music lesson 1 when clicked" do
    click_link("Music Lesson 1")
    expect(page).to have_content("Welcome to Music Lesson 1")
  end

  scenario "A user should NOT be able to see a code lesson they have not reached yet" do
    expect(page).to have_content("Code Lesson 1")
    expect(page).to_not have_content("Code Lesson 2")
  end

  scenario "user should see they're current score on their page" do
    expect(page).to have_content("Score: 40")
    new_user.update(score: 60)
    expect(page).to have_content("Score: 60")
  end

end
