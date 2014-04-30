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

CodeLesson.create(
                  title: "It's Alive!",
                  category: "Fundamentals",
                  lesson_text: "Meet your character, ....., you can move him with the following commands....",
                  question_text: "Your goal is to turn on the robot ..... move to row 5, column 2",
                  img: "grid1.png",
                  map_code: "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0",
                  level: 1,
                  global_level: 1,
                  points: 10,
                  start_row: 1,
                  start_col: 2,
                  solution_row: 5,
                  solution_col: 2)

CodeLesson.create(
                  title: "It can Turn!",
                  category: "Fundamentals",
                  lesson_text: "Wouldn't it be nice if we could turn.... blah blah .....",
                  question_text: "Your goal is to ..... move to row 5 column 5 ",
                  img: "grid1.png",
                  map_code: "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0",
                  level: 2,
                  global_level: 2,
                  points: 10,
                  start_row: 2,
                  start_col: 4,
                  solution_row: 5,
                  solution_col: 5)

CodeLesson.create(
                  title: "Going to the moon!",
                  category: "Fundamentals",
                  lesson_text: "More complex navigation",
                  question_text: "Move to row 3 column 3",
                  img: "grid1.png",
                  map_code: "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0",
                  level: 3,
                  global_level: 3,
                  points: 10,
                  start_row: 2,
                  start_col: 4,
                  solution_row: 3,
                  solution_col: 3)

CodeLesson.create(
                  title: "Moon moving 1",
                  category: "Passing argument",
                  lesson_text: "Doing higher level Fundamentals",
                  question_text: "Move to row 3 column 4",
                  img: "grid2.png",
                  map_code: "0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0",
                  level: 3,
                  global_level: 3,
                  points: 20,
                  start_row: 0,
                  start_col: 0,
                  solution_row: 3,
                  solution_col: 4)

CodeLesson.create(
                  title: "Moon moving 2",
                  category: "Passing argument",
                  lesson_text: "Doing higher level Fundamentals",
                  question_text: "Move to row 4 column 4",
                  img: "grid2.png",
                  map_code: "0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0",
                  level: 3,
                  global_level: 3,
                  points: 20,
                  start_row: 3,
                  start_col: 4,
                  solution_row: 4,
                  solution_col: 4)

CodeLesson.create(
                  title: "Moon moving 3",
                  category: "Passing argument",
                  lesson_text: "Doing higher level Fundamentals",
                  question_text: "Move to row 1 column 0",
                  img: "grid2.png",
                  map_code: "0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0",
                  level: 3,
                  global_level: 3,
                  points: 20,
                  start_row: 4,
                  start_col: 4,
                  solution_row: 1,
                  solution_col: 0)

User.create(email: "a@ga.co",
            name: "Ash Kamel",
            username: "akamel",
            password: "abc12345",
            password_confirmation: "abc12345",
            admin: true)

User.create(email: "j@ga.co",
            name: "Jesse Sessler",
            username: "jsessler",
            password: "abc12345",
            password_confirmation: "abc12345")

User.create(email: "d@ga.co",
            name: "David Kim",
            username: "dkim",
            password: "abc12345",
            password_confirmation: "abc12345")

User.create(email: "l@ga.co",
            name: "Lance Jordan",
            username: "ljordan",
            password: "abc12345",
            password_confirmation: "abc12345")
