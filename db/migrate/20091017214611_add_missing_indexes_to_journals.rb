class AddMissingIndexesToJournals < ActiveRecord::Migration
  def self.up
    add_index :journals, :user_id,        :name => 'journals_nx01'
    add_index :journals, :journalized_id, :name => 'journals_nx02'
  end

  def self.down
    remove_index :journals, :user_id
    remove_index :journals, :journalized_id
  end
end
