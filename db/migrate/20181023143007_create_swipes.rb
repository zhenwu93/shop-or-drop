class CreateSwipes < ActiveRecord::Migration[5.2]
  def change
    create_table :swipes do |t|
      t.integer :user_id
      t.integer :listing_id
      t.string :outcome
      
      t.timestamps
    end
  end
end
