class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :content, :patient
end
