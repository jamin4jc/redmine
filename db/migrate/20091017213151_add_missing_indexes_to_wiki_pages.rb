class AddMissingIndexesToWikiPages < ActiveRecord::Migration
  def self.up
    add_index :wiki_pages, :wiki_id,   :name => 'wiki_pages_nx01'
    add_index :wiki_pages, :parent_id, :name => 'wiki_pages_nx02'
  end

  def self.down
    remove_index :wiki_pages, :wiki_id
    remove_index :wiki_pages, :parent_id
  end
end
