class RenameUserIdToBuyerIdInSwipes < ActiveRecord::Migration[5.2]
  def change
    rename_column :swipes, :user_id, :buyer_id
  end
end
