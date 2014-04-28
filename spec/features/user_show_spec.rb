require 'spec_helper'

feature 'Page should display list of Lessons started or completed' do

  background do
    new_user = User.create({email: "somekid@fakemail.com",
                            name: "Matt farts",
                            username: "somekid",
                            password: "butts1234",
                            password_confirmation: "butts1234"})

    @lesson1 = CodeLesson.create(
                            title: "Code Lesson 1",
                            category: "Coding",
                            lesson_text: "This is a test okay",
                            question_text: "Will this test work?",
                            img: "http://placesheen.com/200/300 ",
                            level: 1,
                            global_level: 1,
                            points: 20,
                            start_row: 5,
                            start_col: 1,
                            solution_row: 1,
                            solution_col: 5)
    @lesson2 = MusicLesson.create(
                            title: "Music Lesson 1",
                            category: "Music",
                            lesson_text: "This is a test okay",
                            question_text: "Will this test work?",
                            img: "http://placesheen.com/200/300 ",
                            level: 1,
                            global_level: 1,
                            points: 20,
                            solution_key_pattern: "test blah")
    sign_in("somekid@fakemail.com", "butts1234")

  end

  scenario "should take us to code lesson 1 when clicked" do
    click_link("Lesson #{@lesson1.level}: #{@lesson1.title}")
    expect(page).to have_content("Welcome to Code Lesson 1")
  end

  scenario "should take us to music lesson 1 when clicked" do
    click_link("Lesson #{@lesson2.level}: #{@lesson2.title}")
    expect(page).to have_content("Welcome to Music Lesson 1")
  end

  scenario "A user should NOT be able to see a code lesson they have not reached yet" do
    expect(page).to have_content("Code Lesson 1")
    expect(page).to_not have_content("Code Lesson 2")
  end

  scenario "user should see they're current score on their page" do
    expect(page).to have_content("Total Score: 0")
  end

end
