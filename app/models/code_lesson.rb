class CodeLesson < ActiveRecord::Base

    has_and_belongs_to_many :users

    validates_presence_of(:lesson_text)
    validates_presence_of(:question_text)
    validates_presence_of(:img)
    validates_presence_of(:level)
    validates_presence_of(:points)
    validates_presence_of(:start_row)
    validates_presence_of(:start_col)
    validates_presence_of(:solution_row)
    validates_presence_of(:solution_col)

end
