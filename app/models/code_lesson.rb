class CodeLesson < ActiveRecord::Base

    has_and_belongs_to_many :users

    # validate_presence_of(:lesson_text)
    # validate_presence_of(:question_text)
    # validate_presence_of(:img)
    # validate_presence_of(:level)
    # validate_presence_of(:points)
    # validate_presence_of(:start_row)
    # validate_presence_of(:start_col)
    # validate_presence_of(:solution_row)
    # validate_presence_of(:solution_col)

end
