class CreateRelationships < ActiveRecord::Migration
  def change
  	create_table :relationships do |t|
      t.references :user
      t.references :contact
      
      t.timestamps
    end
  end
end
