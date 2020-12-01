class GroupSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  attributes :contacts do |c|
    ContactSerializer.new(c.contacts).as_json["data"]
  end
end
