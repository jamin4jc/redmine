class AddMissingIndexesToBoards < ActiveRecord::Migration
  def self.up
    add_index :boards, :last_message_id, :name => 'boards_nx01'
  end

  def self.down
    remove_index :boards, :last_message_id
  end
end
