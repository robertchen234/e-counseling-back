class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :role, :image, :status

  has_many :counselor_reviews
  # has_many :patient_reviews

  # has_many :counselor_tasks
  has_many :patient_tasks
  
end
