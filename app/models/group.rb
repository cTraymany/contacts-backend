class Group < ApplicationRecord
    has_many :contacts
    validates :name, :size, presence: true
end
