class AddLftAndRgtIndexesToProjects < ActiveRecord::Migration
  def self.up
    add_index :projects, :lft, :name => 'projects_nx01'
    add_index :projects, :rgt, :name => 'projects_nx02'
  end

  def self.down
    remove_index :projects, :lft
    remove_index :projects, :rgt
  end
end
