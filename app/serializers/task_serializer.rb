class TaskSerializer < ActiveModel::Serializer
  attributes :id, :task, :complete, :patient, :counselor
end
