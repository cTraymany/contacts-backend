class ChangeDateToStringInContacts < ActiveRecord::Migration[6.0]
  def change
    change_column :contacts, :birthday, :string

  end
end
