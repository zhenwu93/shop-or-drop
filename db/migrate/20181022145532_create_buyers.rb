class CreateBuyers < ActiveRecord::Migration[5.2]
  def change
    create_table :buyers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.integer :phone_number
      t.string :username
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end
