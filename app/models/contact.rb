class Contact < ApplicationRecord
    belongs_to :group
    validates :name, presence: true
    # validates :phoneNumber, length: {is: 10}, numericality: {only_integer: true}
end
