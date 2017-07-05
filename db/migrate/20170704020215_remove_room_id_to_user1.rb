class RemoveRoomIdToUser1 < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :room_id, :integer
  end
end
