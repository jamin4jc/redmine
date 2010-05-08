class AddMissingIndexesToWorkflows < ActiveRecord::Migration
  def self.up
    add_index :workflows, :old_status_id, :name => 'workflows_nx01'
    add_index :workflows, :role_id,       :name => 'workflows_nx02'
    add_index :workflows, :new_status_id, :name => 'workflows_nx03'
  end

  def self.down
    remove_index :workflows, :old_status_id
    remove_index :workflows, :role_id
    remove_index :workflows, :new_status_id
  end
end
