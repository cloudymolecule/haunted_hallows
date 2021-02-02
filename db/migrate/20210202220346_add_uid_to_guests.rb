class AddUidToGuests < ActiveRecord::Migration[6.1]
  def change
    add_column :guests, :uid, :string
  end
end
