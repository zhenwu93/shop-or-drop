class RemovePasswordFromSellers < ActiveRecord::Migration[5.2]
  def change
    remove_column :sellers, :password, :string
  end
end
