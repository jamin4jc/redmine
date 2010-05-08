class AddMissingIndexesToComments < ActiveRecord::Migration
  def self.up
    add_index :comments, [:commented_id, :commented_type], :name => 'comments_nx01' 
    add_index :comments, :author_id,                       :name => 'comments_nx02'
  end

  def self.down
    remove_index :comments, :column => [:commented_id, :commented_type]
    remove_index :comments, :author_id
  end
end
