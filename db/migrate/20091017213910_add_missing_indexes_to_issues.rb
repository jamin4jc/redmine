class AddMissingIndexesToIssues < ActiveRecord::Migration
  def self.up
    add_index :issues, :status_id,        :name => 'issues_nx01'
    add_index :issues, :category_id,      :name => 'issues_nx02'
    add_index :issues, :assigned_to_id,   :name => 'issues_nx03'
    add_index :issues, :fixed_version_id, :name => 'issues_nx04'
    add_index :issues, :tracker_id,       :name => 'issues_nx05'
    add_index :issues, :priority_id,      :name => 'issues_nx06'
    add_index :issues, :author_id,        :name => 'issues_nx07'
  end

  def self.down
    remove_index :issues, :status_id
    remove_index :issues, :category_id
    remove_index :issues, :assigned_to_id
    remove_index :issues, :fixed_version_id
    remove_index :issues, :tracker_id
    remove_index :issues, :priority_id
    remove_index :issues, :author_id
  end
end
