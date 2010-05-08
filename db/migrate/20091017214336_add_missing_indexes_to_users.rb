class AddMissingIndexesToUsers < ActiveRecord::Migration
  def self.up
    add_index :users, [:id, :type],    :name => 'users_nx01'
    add_index :users, :auth_source_id, :name => 'users_nx02'
  end

  def self.down
    remove_index :users, :column => [:id, :type]
    remove_index :users, :auth_source_id
  end
end
