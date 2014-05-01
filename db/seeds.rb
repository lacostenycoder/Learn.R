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
                  global_level: 4,
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
                  global_level: 5,
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
                  global_level: 6,
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
