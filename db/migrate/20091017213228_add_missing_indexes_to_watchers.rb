class AddMissingIndexesToWatchers < ActiveRecord::Migration
  def self.up
    add_index :watchers, :user_id,                         :name => 'watchers_nx01'
    add_index :watchers, [:watchable_id, :watchable_type], :name => 'watchers_nx02'
  end

  def self.down
    remove_index :watchers, :user_id
    remove_index :watchers, :column => [:watchable_id, :watchable_type]
  end
end
