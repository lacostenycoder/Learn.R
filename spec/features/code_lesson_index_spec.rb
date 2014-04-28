require 'spec_helper'

feature 'Page should display list of Coding lessons available to the user'  do


  background   do
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

    lesson2 = CodeLesson.create(
                            title: "Code Lesson 2",
                            category: "Coding",
                            lesson_text: "Learning how to make superman fly",
                            question_text: "How do we make this guy move to a building",
                            img: "http://superman.com/superman.jpeg ",
                            level: 1,
                            points: 20,
                            start_row: 2,
                            start_col: 4,
                            solution_row: 5,
                            solution_col: 6)
    new_user = User.create({email: "somekid@fakemail.com",
                            name: "Matt farts",
                            username: "somekid",
                            password: "butts",
                            password_confirmation: "butts"})
    sign_in("somekid@fakemail.com", "butts")

  end

  scenario "when viewing code list I can see a list of avialable lessons" do
    expect(page).to have_content(lesson1.title)
    expect(page).to have_content(lesson2.title)

  end

  scenario "when i click a lesson it should take me to the show page" do
    click_link("Lesson 1: #{lesson1.title}")
    expect(page).to have_content(lesson1.title)
  end

  scenario "expect lessons not up to to be not clickable and greyed out" do
    expect(page.has_no_link?("Lesson 2: #{lesson2.title}")).to be_true
  end

  scenario "expect lessons completed to have completed class tag" do
    new_user.code_lessons << lesson1
    expect(page.has_selector?('li.completed')).to be_true

  end

end

