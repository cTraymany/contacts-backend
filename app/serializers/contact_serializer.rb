class ContactSerializer
  include FastJsonapi::ObjectSerializer
  attributes :group_id, :name, :birthday, :phoneNumber
end
