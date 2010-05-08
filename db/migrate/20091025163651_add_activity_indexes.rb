class AddActivityIndexes < ActiveRecord::Migration
  def self.up
    add_index :journals,              :created_on,   :name => 'journals_nx03'
    add_index :changesets,            :committed_on, :name => 'changesets_nx03'
    add_index :wiki_content_versions, :updated_on,   :name => 'wiki_versions_nx01'
    add_index :messages,              :created_on,   :name => 'messages_nx03'
    add_index :issues,                :created_on,   :name => 'issues_nx08'
    add_index :news,                  :created_on,   :name => 'news_nx02'
    add_index :attachments,           :created_on,   :name => 'attachments_nx03'
    add_index :documents,             :created_on,   :name => 'documents_nx02'
    add_index :time_entries,          :created_on,   :name => 'time_entries_nx03'
  end

  def self.down
    remove_index :journals, :created_on
    remove_index :changesets, :committed_on
    remove_index :wiki_content_versions, :updated_on
    remove_index :messages, :created_on
    remove_index :issues, :created_on
    remove_index :news, :created_on
    remove_index :attachments, :created_on
    remove_index :documents, :created_on
    remove_index :time_entries, :created_on
  end
end
