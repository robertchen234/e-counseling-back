class Task < ApplicationRecord

  belongs_to :patient, class_name: :User, optional: true
  belongs_to :counselor, class_name: :User, optional: true

end
