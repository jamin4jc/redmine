class AddMissingIndexesToQueries < ActiveRecord::Migration
  def self.up
    add_index :queries, :project_id, :name => 'queries_nx01'
    add_index :queries, :user_id,    :name => 'queries_nx02'
  end

  def self.down
    remove_index :queries, :project_id
    remove_index :queries, :user_id
  end
end
