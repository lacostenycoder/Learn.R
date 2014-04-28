require 'spec_helper'

feature 'Page should display the individual lesson that we can play'  do

  background do
    lesson1 = CodeLesson.create(
                            title: "Code Lesson 1",
                            category: "Coding",
                            lesson_text: "This is a test okay",
                            question_text: "Will this test work?",
                            img: "http://placesheen.com/200/300 ",
                            level: 1,
                            points: 20,
                            start_row: 5,
                            start_col: 1,
                            solution_row: 1,
                            solution_col: 5)
    new_user = User.create({email: "somekid@fakemail.com",
                            name: "Matt farts",
                            username: "somekid",
                            password: "butts",
                            password_confirmation: "butts"})
    sign_in("somekid@fakemail.com", "butts")
    new_user.code_lessons << lesson1

  end

  scenario "when visiting the code lesson page it loads the game" do
    visit("/code_lessons/#{lesson1.id}")
    expect(page).to have_content(lesson1.title)
    expect(page).to have_content(lesson1.points)
  end

  scenario "when visiting the code lesson page it loads the game" do
    visit("/code_lessons/#{lesson1.id}")
    expect(page).to have_content("Submit")
  end

  # scenario "when visiting the code lesson page it loads the game" do

  # end

end
