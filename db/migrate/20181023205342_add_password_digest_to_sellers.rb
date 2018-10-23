class AddPasswordDigestToSellers < ActiveRecord::Migration[5.2]
  def change
    add_column :sellers, :password_digest, :string
  end
end
