class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :details
      t.integer :age
      t.string :developer
      t.float :price
      t.text :trailer
      t.integer :store_id

      t.timestamps
    end
  end
end
