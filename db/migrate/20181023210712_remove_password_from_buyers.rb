class RemovePasswordFromBuyers < ActiveRecord::Migration[5.2]
  def change
    remove_column :buyers, :password, :string
  end
end
