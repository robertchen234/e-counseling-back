class User < ApplicationRecord

  has_many :patient_reviews, class_name: :Review, foreign_key: :patient_id
  has_many :patients, through: :patient_reviews, source: :patient

  has_many :counselor_reviews, class_name: :Review, foreign_key: :counselor_id
  has_many :counselors, through: :counselor_reviews, source: :counselor
  
end
