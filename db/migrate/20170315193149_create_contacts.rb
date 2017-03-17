class CreateContacts < ActiveRecord::Migration
  def change
  	create_table :contacts do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :phone_number, :null => false
      
      t.timestamps
    end
  end
end
