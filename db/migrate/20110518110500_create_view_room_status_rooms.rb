class CreateViewRoomStatusRooms < ActiveRecord::Migration
  def self.up
    create_table :view_room_status_rooms do |t|
      t.integer :id
      t.string :name
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :view_room_status_rooms
  end
end
