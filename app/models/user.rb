class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # attr_accessible :username, :name, :email, :password, :password_confirmation, :remember_me

  # Custom Validations
  validates(:name, :username, presence: true)
  validates(:username, uniqueness: true)
  validates(:avatar, presence: true)

  has_and_belongs_to_many :code_lessons
  has_and_belongs_to_many :music_lessons

  before_create :initialize_score

  def progress
    total_course_lessons = MusicLesson.all.size + CodeLesson.all.size
    total_completed_lessons = self.music_lessons.size + self.code_lessons.size
    (total_completed_lessons / total_course_lessons.to_f * 100).to_i
  end

  private

    def initialize_score
      self.score = 0
    end

end
