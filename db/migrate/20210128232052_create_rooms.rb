class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :number
      t.string :haunting
      t.string :note
      t.boolean :do_not_disturb

      t.timestamps
    end
  end
end
