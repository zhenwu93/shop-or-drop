class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.integer :club_id
      t.integer :product_id
      t.integer :seller_id

      t.timestamps
    end
  end
end
