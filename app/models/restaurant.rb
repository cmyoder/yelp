class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :descriptors,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
