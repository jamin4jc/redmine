class AddMissingIndexesToWikiRedirects < ActiveRecord::Migration
  def self.up
    add_index :wiki_redirects, :wiki_id, :name => 'wiki_redirects_nx01'
  end

  def self.down
    remove_index :wiki_redirects, :wiki_id
  end
end
