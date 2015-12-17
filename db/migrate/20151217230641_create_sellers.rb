class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :name
      t.string :home_url
      t.references :product, index: true

      t.timestamps
    end
  end
end
