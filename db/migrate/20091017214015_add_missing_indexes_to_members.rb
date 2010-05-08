class AddMissingIndexesToMembers < ActiveRecord::Migration
  def self.up
    add_index :members, :user_id,    :name => 'members_nx01'
    add_index :members, :project_id, :name => 'members_nx02'
  end

  def self.down
    remove_index :members, :user_id
    remove_index :members, :project_id
  end
end
