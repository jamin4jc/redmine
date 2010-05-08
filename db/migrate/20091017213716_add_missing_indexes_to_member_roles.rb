class AddMissingIndexesToMemberRoles < ActiveRecord::Migration
  def self.up
    add_index :member_roles, :member_id, :name => 'member_roles_nx01'
    add_index :member_roles, :role_id,   :name => 'member_roles_nx02'
  end

  def self.down
    remove_index :member_roles, :member_id
    remove_index :member_roles, :role_id
  end
end
