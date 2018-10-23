class AddPasswordDigestToBuyer < ActiveRecord::Migration[5.2]
  def change
    add_column :buyers, :password_digest, :string
  end
end
