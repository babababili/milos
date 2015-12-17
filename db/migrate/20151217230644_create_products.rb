class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :asin
      t.string :description
      t.float :price
      t.float :ship_price
      t.integer :rank

      t.timestamps
    end
  end
end
