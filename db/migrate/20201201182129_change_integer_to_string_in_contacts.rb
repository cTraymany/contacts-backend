class ChangeIntegerToStringInContacts < ActiveRecord::Migration[6.0]
  def change
    change_column :contacts, :phoneNumber, :string
  end
end
