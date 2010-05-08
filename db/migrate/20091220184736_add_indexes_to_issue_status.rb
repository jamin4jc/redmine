class AddIndexesToIssueStatus < ActiveRecord::Migration
  def self.up
    add_index :issue_statuses, :position,   :name => 'issue_statuses_nx01'
    add_index :issue_statuses, :is_closed,  :name => 'issue_statuses_nx02'
    add_index :issue_statuses, :is_default, :name => 'issue_statuses_nx03'
  end

  def self.down
    remove_index :issue_statuses, :position
    remove_index :issue_statuses, :is_closed
    remove_index :issue_statuses, :is_default
  end
end
