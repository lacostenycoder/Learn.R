require 'spec_helper'

describe MusicLesson do
  subject(:music_lesson) {MusicLesson.create(
                            points: 10, level: 10, img: "http://google.com/me.jpg",
                            lesson_text: "This is a test for music",
                            question_text: "What are we testing today?",
                            solution_key_pattern: "B5, H6, I7",
                            category: "Scales",
                            title: "Major Scale")}
                            solution_key_pattern: "B5, H6, I7")}

  it { should validate_presence_of :points}
  it { should validate_presence_of :level}
  it { should validate_presence_of :img}
  it { should validate_presence_of :lesson_text}
  it { should validate_presence_of :question_text}
  it { should validate_presence_of :solution_key_pattern}
  it { should validate_presence_of :category}
  it { should validate_presence_of :title}

  it { should have_and_belong_to_many(:users) }

end
