class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.integer :group_id
      t.string :name
      t.integer :phoneNumber
      t.datetime :birthday

      t.timestamps
    end
  end
end
