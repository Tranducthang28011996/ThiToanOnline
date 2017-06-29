class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :tenphong
      t.string :loaiphong
      t.integer :trangthai

      t.timestamps
    end
  end
end
