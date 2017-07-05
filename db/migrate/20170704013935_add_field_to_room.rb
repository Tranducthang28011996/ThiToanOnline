class AddFieldToRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :monthi, :string
    add_column :rooms, :user_id, :integer
    add_column :rooms, :songuoi, :integer
  end
end
