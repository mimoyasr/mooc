class Lecture < ApplicationRecord
    belongs_to :course
    has_many :reports
    mount_uploader :file, FileUploader
    acts_as_votable
    acts_as_commontable
end
