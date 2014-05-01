MusicLesson.destroy_all
CodeLesson.destroy_all
User.destroy_all

MusicLesson.create(
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

MusicLesson.create(
                   lesson_text: "You will learn Rhythm fool",
                   question_text: "How will you master rhythm?",
                   img: "http://placesheen.com/400/400 ",
                   level: 1,
                   points: 40,
                   solution_key_pattern: "77, 99, 22",
                   category: "Rhythm",
                   title: "Poop",
                   global_level: 2
                   )

MusicLesson.create(
                   lesson_text: "Blah blah",
                   question_text: "Will this test work? again?",
                   img: "http://placesheen.com/200/300 ",
                   level: 2,
                   points: 50,
                   solution_key_pattern: "22, 33, 44",
                   category: "Scales",
                   title: "Minor Scale",
                   global_level: 3
                   )

##Code Lessons - Category Fundamentals - Lesson 1
CodeLesson.create(
                  title: "It's Alive!",
                  category: "Fundamentals",
                  lesson_text: "Hey there! I see you stumbled upon our secret little hideaway.  I have this MVC here that isnt working.  Do you think you could help me get him going?",
                  question_text: "Type in 'moveForward();' to turn the MVC on and move forward.",
                  img: "grid1.png",
                  map_code: "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0",
                  level: 1,
                  global_level: 1,
                  points: 100,
                  start_row: 5,
                  start_col: 1,
                  solution_row: 5,
                  solution_col: 2)

##Code Lessons - Category Fundamentals - Lesson 2
CodeLesson.create(
                  title: "Its Alive!",
                  category: "Fundamentals",
                  lesson_text: "Excellent work! you got our MVC working!  Now we need to get him accross the room to test his limits",
                  question_text: "How can we get our MVC to the corner of the room at coordinates ",
                  img: "grid1.png",
                  map_code: "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0",
                  level: 2,
                  global_level: 2,
                  points: 100,
                  start_row: 5,
                  start_col: 2,
                  solution_row: 5,
                  solution_col: 5)
##Code Lessons - Category Fundamentals - Lesson 3
CodeLesson.create(
                  title: "Gettin Funky",
                  category: "Fundamentals",
                  lesson_text: "Now that our MVC is in the corner lets see what he can do",
                  question_text: "Turn our robot so that he looks like he's on his head and take him to the spot above him, hint(use turnLeft();)",
                  img: "grid1.png",
                  map_code: "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0",
                  level: 3,
                  global_level: 3,
                  points: 100,
                  start_row: 5,
                  start_col: 5,
                  solution_row: 4,
                  solution_col: 5)
##Code Lessons - Category Fundamentals - Lesson 4
CodeLesson.create(
                  title: "Prepare for Take off!",
                  category: "Fundamentals",
                  lesson_text: "We need to get our MVC to the North West most corner in order to load him into the flight deck.  Our MVC Loads the craft updside down",
                  question_text: "Make sure you use all the commands available.",
                  img: "grid1.png",
                  map_code: "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0",
                  level: 4,
                  global_level: 4,
                  points: 200,
                  start_row: 4,
                  start_col: 5,
                  solution_row: 0,
                  solution_col: 0)
##Code Lessons - Category Gem Hunting - Lesson 1
CodeLesson.create(
                  title: "Incoming!",
                  category: "Gem Hunting",
                  lesson_text: "After a long arduous journey through the vast universe you we have landed on this mysterious foreign planet.  ..... Hey, I think I see something in the distance go check it out.",
                  question_text: "Find a way to get our MVC to that object using the commands we learned",
                  img: "grid2.png",
                  map_code: "0,1,0,0,0,0,0,1,0,1,1,0,0,0,0,1,1,0,0,0,1,0,0,0,1,1,1,0,1,1,0,0,0,0,1,1",
                  level: 1,
                  global_level: 5,
                  points: 200,
                  start_row: 0,
                  start_col: 0,
                  solution_row: 1,
                  solution_col: 3)
##Code Lessons - Category Gem Hunting - Lesson 2
CodeLesson.create(
                  title: "Stacking Gems",
                  category: "Gem Hunting",
                  lesson_text: "Wow! Look at this beautiful Ruby Gem, I wonder what it does.  Hmm, it looks like this Gem is part of a set.  I wonder if there are any other gems around?  Take a look.",
                  question_text: "Find more gems using the tools you have found",
                  img: "grid2.png",
                  map_code: "0,1,0,0,0,0,0,1,0,1,1,0,0,0,0,1,1,0,0,0,1,0,0,0,1,1,1,0,1,1,0,0,0,0,1,1",
                  level: 2,
                  global_level: 6,
                  points: 200,
                  start_row: 1,
                  start_col: 3,
                  solution_row: 4,
                  solution_col: 4)
##Code Lessons - Category Gem Hunting - Lesson 3
CodeLesson.create(
                  title: "Complete the Collection",
                  category: "Gem Hunting",
                  lesson_text: "Hmm these gems seem magical, I feel like we are getting more power.  I wonder what one more gem would feel like.",
                  question_text: "Keep searching for those gems",
                  img: "grid2.png",
                  map_code: "0,1,0,0,0,0,0,1,0,1,1,0,0,0,0,1,1,0,0,0,1,0,0,0,1,1,1,0,1,1,0,0,0,0,1,1",
                  level: 3,
                  global_level: 7,
                  points: 300,
                  start_row: 3,
                  start_col: 4,
                  solution_row: 0,
                  solution_col: 5)
##Code Lessons - Category Parameters - Finale
CodeLesson.create(
                  title: "Escape(planet)!",
                  category: "Parameters",
                  lesson_text: "Wow this collection is beautiful.... when we combine it we now have new powers!  ....... Ahhh! Whats that rumble?  ..... QUICK! run you need to get off this planet quick!",
                  question_text: "Use your new powers to escape and get home, Power: ' function(number)' .",
                  img: "grid2.png",
                  map_code: "0,1,0,0,0,0,0,1,0,1,1,0,0,0,0,1,1,0,0,0,1,0,0,0,1,1,1,0,1,1,0,0,0,0,1,1",
                  level: 1,
                  global_level: 8,
                  points: 500,
                  start_row: 0,
                  start_col: 5,
                  solution_row: 0,
                  solution_col: 0)


User.create(email: "a@ga.co",
            name: "Ash Kamel",
            username: "akamel",
            avatar: "code_wizard_100.png",
            password: "abc12345",
            password_confirmation: "abc12345",
            admin: true)

User.create(email: "jesse.sessler@gmail.com",
            name: "Jesse Sessler",
            username: "jsessler",
            avatar: "code_wizard_100.png",
            password: "abc12345",
            password_confirmation: "abc12345",
            admin: true)

User.create(email: "d@ga.com",
            name: "David Kim",
            username: "dkim",
            avatar: "code_wizard_100.png",
            password: "abc12345",
            password_confirmation: "abc12345",
            admin: true)

User.create(email: "l@ga.com",
            name: "Lance Jordan",
            username: "ljordan",
            avatar: "code_wizard_100.png",
            password: "abc12345",
            password_confirmation: "abc12345",
            admin: true)
