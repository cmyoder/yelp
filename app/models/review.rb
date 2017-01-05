class Review < ApplicationRecord
  mount_uploader :pictures, PictureUploader

  # Direct associations

  belongs_to :restaurant

  belongs_to :user

  # Indirect associations

  # Validations

end
