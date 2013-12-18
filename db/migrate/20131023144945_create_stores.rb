class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :address
      t.string :county
      t.string :phoneNumber

      t.timestamps
    end
  end
end
