class CreateGuests < ActiveRecord::Migration[6.1]
  def change
    create_table :guests do |t|
      t.string :username
      t.string :email
      t.string :bio
      t.integer :age
      t.string :gender
      t.string :password_digest

      t.timestamps
    end
  end
end
