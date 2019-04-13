class Review < ApplicationRecord

  belongs_to :counselor, class_name: :User
  belongs_to :patient, class_name: :User, optional: true

end
