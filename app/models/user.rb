class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum gender: {male: 0, female: 1}
  enum level: {admin: 0, instructor: 1, user: 2}

  mount_uploader :profile, ProfileUploader
  has_many :courses
  acts_as_commontator
end
