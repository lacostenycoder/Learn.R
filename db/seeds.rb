# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
MusicLesson.destroy_all
CodeLesson.destroy_all
User.destroy_all

musiclesson1 = MusicLesson.create(
                      lesson_text: "This is a test okay",
                      question_text: "Will this test work?",
                      img: "http://placesheen.com/200/300 ",
                      level: 1,
                      points: 20,
                      solution_key_pattern: "90, 88, 67",
                      category: "Scales",
                      title: "Major Scale",
                      global_level: 1
                      )

musiclesson2 = MusicLesson.create(
                      lesson_text: "You will learn Rhythm fool",
                      question_text: "How will you master rhythm?",
                      img: "http://placesheen.com/400/400 ",
                      level: 1,
                      points: 40,
                      solution_key_pattern: "77, 99, 22",
                      category: "Rhythm",
                      title: "Poop",
                      global_level: 3
                      )

musiclesson3 = MusicLesson.create(
                      lesson_text: "Blah blah",
                      question_text: "Will this test work? again?",
                      img: "http://placesheen.com/200/300 ",
                      level: 2,
                      points: 50,
                      solution_key_pattern: "22, 33, 44",
                      category: "Scales",
                      title: "Minor Scale",
                      global_level: 2
                      )

codelesson1 = CodeLesson.create(
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

codelesson2 = CodeLesson.create(
                            title: "Code Lesson 2",
                            category: "Coding",
                            lesson_text: "Learning how to make superman fly",
                            question_text: "How do we make this guy move to a building",
                            img: "http://superman.com/superman.jpeg ",
                            level: 2,
                            global_level: 2,
                            points: 20,
                            start_row: 2,
                            start_col: 4,
                            solution_row: 5,
                            solution_col: 6)

codelesson3 = CodeLesson.create(
                            title: "Code Lesson 3",
                            category: "Coding",
                            lesson_text: "Learning how to make superman fly",
                            question_text: "How do we make this guy move to a building",
                            img: "http://superman.com/superman.jpeg ",
                            level: 3,
                            global_level: 3,
                            points: 20,
                            start_row: 2,
                            start_col: 4,
                            solution_row: 5,
                            solution_col: 6)

user1 = User.create({email: "a@ga.co",
                      name: "Ash Kamel",
                      username: "akamel",
                      password: "abc12345",
                      password_confirmation: "abc12345"})

user1.code_lessons << codelesson1
user1.music_lessons << musiclesson1


