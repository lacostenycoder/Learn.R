require 'spec_helper'

describe CodeLesson do
  subject(:code_lesson) {CodeLesson.create(
                            lesson_text: "This is a test okay",
                            question_text: "Will this test work?",
                            img: "http://placesheen.com/200/300 ",
                            level: 1,
                            points: 20,
                            start_row: 5,
                            start_col: 1,
                            solution_row: 1,
                            solution_col: 5)}

  it { should validate_presence_of :lesson_text}
  it { should validate_presence_of :question_text}
  it { should validate_presence_of :img}
  it { should validate_presence_of :level}
  it { should validate_presence_of :points}
  it { should validate_presence_of :start_row}
  it { should validate_presence_of :start_col}
  it { should validate_presence_of :solution_row}
  it { should validate_presence_of :solution_col}
end

