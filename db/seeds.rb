# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
MusicLesson.create(
                      lesson_text: "This is a test okay",
                      question_text: "Will this test work?",
                      img: "http://placesheen.com/200/300 ",
                      level: 1,
                      points: 20,
                      solution_key_pattern: "65, 65, 88",
                      category: "Scales",
                      title: "Major Scale"
                      )
