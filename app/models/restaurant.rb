class Restaurant < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  # Direct associations

  has_many   :reviews,
             :dependent => :destroy

  has_many   :descriptors,
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :reviews,
             :source => :user

  has_many   :tags,
             :through => :descriptors,
             :source => :tag

  # Validations

end
