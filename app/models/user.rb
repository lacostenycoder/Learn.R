class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # attr_accessible :username, :name, :email, :password, :password_confirmation, :remember_me

  # Custom Validations
  validates(:name, :username, presence: true)
  validates(:username, uniqueness: true)

  has_and_belongs_to_many :code_lessons
  has_and_belongs_to_many :music_lessons


end
