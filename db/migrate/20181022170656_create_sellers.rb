class CreateSellers < ActiveRecord::Migration[5.2]
  def change
    create_table :sellers do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password
      t.string :email
      t.string :rating

      t.timestamps
    end
  end
end
