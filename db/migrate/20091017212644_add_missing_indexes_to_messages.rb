class AddMissingIndexesToMessages < ActiveRecord::Migration
  def self.up
    add_index :messages, :last_reply_id, :name => 'messages_nx01'
    add_index :messages, :author_id,     :name => 'messages_nx02'
  end

  def self.down
    remove_index :messages, :last_reply_id
    remove_index :messages, :author_id
  end
end
