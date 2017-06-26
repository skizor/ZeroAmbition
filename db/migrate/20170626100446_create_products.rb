class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.attachment :image
      t.integer :price
      t.integer :category_id
      t.boolean :available, default: true
      t.integer :discount

      t.timestamps
    end
  end
end
