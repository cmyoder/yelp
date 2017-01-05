class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :reviews,
             :dependent => :destroy

  has_many   :descriptors,
             :dependent => :destroy

  # Indirect associations

  has_many   :tags,
             :through => :descriptors,
             :source => :tag

  # Validations

end
