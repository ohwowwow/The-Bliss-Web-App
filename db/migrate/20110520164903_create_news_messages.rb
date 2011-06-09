class CreateNewsMessages < ActiveRecord::Migration
  def self.up
    create_table :news_messages do |t|
      t.string :text

      t.timestamps
    end
  end

  def self.down
    drop_table :news_messages
  end
end
