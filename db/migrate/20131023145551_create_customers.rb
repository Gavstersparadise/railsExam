class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :emailAddress
      t.string :phoneNumber

      t.timestamps
    end
  end
end
