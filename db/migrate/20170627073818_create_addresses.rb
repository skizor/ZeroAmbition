class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.integer :user_id
      t.string  :city
      t.string  :street
      t.string  :home
      t.string  :flat

      t.timestamps
    end
  end
end
