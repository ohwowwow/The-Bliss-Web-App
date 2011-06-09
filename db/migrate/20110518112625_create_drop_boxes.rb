class CreateDropBoxes < ActiveRecord::Migration
  def self.up
    create_table :drop_boxes do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :drop_boxes
  end
end
