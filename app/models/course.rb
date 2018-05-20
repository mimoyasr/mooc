class Course < ApplicationRecord
    validates :title, uniqueness: true
    has_many :lectures
    belongs_to :user
end