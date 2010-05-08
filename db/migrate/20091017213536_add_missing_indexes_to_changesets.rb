class AddMissingIndexesToChangesets < ActiveRecord::Migration
  def self.up
    add_index :changesets, :user_id,       :name => 'changesets_nx01'
    add_index :changesets, :repository_id, :name => 'changesets_nx02'
  end

  def self.down
    remove_index :changesets, :user_id
    remove_index :changesets, :repository_id
  end
end
