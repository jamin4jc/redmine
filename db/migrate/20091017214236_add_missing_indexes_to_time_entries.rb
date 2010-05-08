class AddMissingIndexesToTimeEntries < ActiveRecord::Migration
  def self.up
    add_index :time_entries, :activity_id, :name => 'time_entries_nx01'
    add_index :time_entries, :user_id,     :name => 'time_entries_nx02'
  end

  def self.down
    remove_index :time_entries, :activity_id
    remove_index :time_entries, :user_id
  end
end
