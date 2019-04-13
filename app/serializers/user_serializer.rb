class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :role, :image

  has_many :counselor_reviews
  has_many :patient_reviews
  
end
