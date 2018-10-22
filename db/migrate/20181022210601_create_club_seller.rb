class CreateClubSeller < ActiveRecord::Migration[5.2]
  def change
    create_table :club_sellers do |t|
      t.integer :club_id
      t.integer :seller_id
    end
  end
end
