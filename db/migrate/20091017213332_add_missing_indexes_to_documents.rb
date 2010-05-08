class AddMissingIndexesToDocuments < ActiveRecord::Migration
  def self.up
    add_index :documents, :category_id, :name => 'documents_nx01'
  end

  def self.down
    remove_index :documents, :category_id
  end
end
