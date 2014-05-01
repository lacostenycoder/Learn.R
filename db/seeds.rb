MusicLesson.destroy_all
CodeLesson.destroy_all
User.destroy_all

MusicLesson.create(
                   lesson_text: 'The foundation of Music in our culture is based on what is called the Major Scale. The notes of the "Natural Scale" or C scale are constructed using the white keys only. There are 7 notes in a Major Scale.  In the key of C, they start on C and go up from left to right, so ( C, D, E, F, G, A, B ) and when we get to the next C or the eight note it repeats again at the next "Octave" and starts again at C. C2 and C3 have the similar character as you can hear by playing them. For this lesson listen to the notes ascending up the scale and play them back in the same order. Hit "Start" to begin.',
                   question_text: "See if you can play the C Major Scale starting on C2 and ending on C3!",
                   img: "http://placesheen.com/200/300 ",
                   level: 1,
                   points: 100,
                   solution_key_pattern: '90, 88, 67, 86, 66, 78, 77, 81',
                   category: "Scales",
                   title: "C Major Scale",
                   global_level: 1
                   )

MusicLesson.create(
                   lesson_text: 'The Minor Scale is based on the same notes as the Major Scale but instead of starting on C or the 1st note, it starts on A (the 6th note of C Major Scale) . So it would be from low to high, (A, B, C, D, E, F, G, A). Because they use the exact same notes, A minor is considered the "relative minor" of C major.The Minor scale is felt to be a bit sadder sounding than Major, which sounds happy and uplifting. The differnt "modes" are used to express different moods.  Music is is a language!',
                   question_text: 'See if you can play the A Minor Scale starting on A2 and ending on A3.',
                   img: "http://placesheen.com/200/300",
                   level: 2,
                   points: 100,
                   solution_key_pattern: "78, 77, 81, 87, 69, 82, 84, 89",
                   category: "Scales",
                   title: "A Minor Scale",
                   global_level: 2
                   )

MusicLesson.create(
                   lesson_text: 'What are the black keys for? Each note on the keyboard steps up one note or "interval", at a time from low to high, left to right. To get from C to D you must go up two keys or two "half steps". Because we use the Major Scale as our main system, the white keys in the natural C scale follow a step pattern where the black keys are skipped.  So if we count in half steps, there are 11 (12 with the octive) notes in the total octave range. The C major scale is constructed using the following pattern of steps: (Whole, Whole, Half, Whole, Whole, Whole, Half).  Notice that there are no black keys between E and F and between B and C.  This gives us the formula for contructing a Major Scale based on this pattern.',
                   question_text: 'See if you can play a G Major scale starting on G2 and ending on G3.  Use the step pattern of (W,W,h,W,W,W,h). Hint: in order to construct this scale you will need to use one black key to get the correct pattern.',
                   img: "http://placesheen.com/200/300",
                   level: 1,
                   points: 150,
                   solution_key_pattern: "66, 78, 77, 81, 87, 69, 53, 84",
                   category: "Scales",
                   title: "Intervals",
                   global_level: 3
                   )

<<<<<<< HEAD

MusicLesson.create(
                   lesson_text: 'Like the Major Scale, it\'s relative Minor Scale has a pattern on which it is constructed. Notice how the A Minor scale also uses no black keys. So the pattern to construct it is: (W,h,W,W,h,W,W). The black keys are called "sharp" keys and are on half step higher in pitch than the corresponding natural key of the same name.',
                   question_text: 'Play an E Minor scale starting on E2, using the correct pattern.',
                   img: "http://placesheen.com/200/300",
                   level: 1,
                   points: 150,
                   solution_key_pattern: "67, 71, 66, 78, 77, 81, 87, 69",
                   category: "Scales",
                   title: "Intervals II",
                   global_level: 4
                   )

MusicLesson.create(
                   lesson_text: 'Chords are defined as a group of three or more notes combined and played simultaneously. A Major chord is composed of the 1st(Tonic), 3rd(Mediant), and 5th(Dominant) notes of their respective Major Scale(key). So a C Major Chord is contructed from (C, E, G)',
                   question_text: 'Using this construct formula, play a G Major Chord with G2 as the first note. Hold them together to play a chord',
                   img: "http://placesheen.com/200/300",
                   level: 2,
                   points: 100,
                   solution_key_pattern: "66, 77, 87",
                   category: "Chords",
                   title: "Major Triad",
                   global_level: 5
                   )

##Code Lessons - Category Fundamentals - Lesson 1
CodeLesson.create(
                  title: "It's Alive!",
                  category: "Fundamentals",
                  lesson_text: "Hey there! I see you stumbled upon our secret little hideaway.  I have this MVC, a Mechanical Vehicular Compter, here that isn't working.  Do you think you could help me get him going?",
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
                  question_text: "How can we get our MVC to the corner of the three steps forward ",
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
                  lesson_text: "Looks like our MVC is stuck in the hay!",
                  question_text: "Turn our robot so that he looks like he's on his back and take him to the spot above him, hint(use turnLeft();)",
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
                  img: "grid2-1.png",
                  map_code: "0,1,0,0,0,0,0,1,0,1,1,0,0,0,0,1,1,0,0,0,1,0,0,0,1,1,1,0,1,1,0,0,0,0,1,1",
                  level: 1,
                  global_level: 5,
                  points: 200,
                  start_row: 0,
                  start_col: 0,
                  solution_row: 1,
                  solution_col: 2)
##Code Lessons - Category Gem Hunting - Lesson 2
CodeLesson.create(
                  title: "Stacking Gems",
                  category: "Gem Hunting",
                  lesson_text: "Wow! Look at this beautiful Ruby Gem, I wonder what it does.  Hmm, it looks like this Gem is part of a set.  I wonder if there are any other gems around?  Take a look.",
                  question_text: "Find more gems using the tools you have found",
                  img: "grid2-2.png",
                  map_code: "0,1,0,0,0,0,0,1,0,1,1,0,0,0,0,1,1,0,0,0,1,0,0,0,1,1,1,0,1,1,0,0,0,0,1,1",
                  level: 2,
                  global_level: 6,
                  points: 200,
                  start_row: 1,
                  start_col: 2,
                  solution_row: 3,
                  solution_col: 4)
##Code Lessons - Category Gem Hunting - Lesson 3
CodeLesson.create(
                  title: "Complete the Collection",
                  category: "Gem Hunting",
                  lesson_text: "Hmm these gems seem magical, I feel like we are getting more power.  I wonder what one more gem would feel like.",
                  question_text: "Keep searching for those gems",
                  img: "grid2-3.png",
                  map_code: "0,1,0,0,0,0,0,1,0,1,1,0,0,0,0,1,1,0,0,0,1,0,0,0,1,1,1,0,1,1,0,0,0,0,1,1",
                  level: 3,
                  global_level: 7,
                  points: 300,
                  start_row: 3,
                  start_col: 4,
                  solution_row: 5,
                  solution_col: 0)
##Code Lessons - Category Parameters - Finale
CodeLesson.create(
                  title: "Escape(planet)!",
                  category: "Parameters",
                  lesson_text: "Wow this collection is beautiful.... when we combine it we now have new powers!  ....... Ahhh! Whats that rumble?  ..... QUICK! run you need to get off this planet quick!",
                  question_text: "Use your new powers to escape and get home, Power: ' function(number)' .",
                  img: "grid2-3.png",
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
