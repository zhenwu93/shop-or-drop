class RenameUserIdToBuyerIdInWishlist < ActiveRecord::Migration[5.2]
  def change
    rename_column :wishlists, :user_id, :buyer_id
  end
end
