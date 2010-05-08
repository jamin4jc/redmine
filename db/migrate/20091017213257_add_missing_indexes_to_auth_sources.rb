class AddMissingIndexesToAuthSources < ActiveRecord::Migration
  def self.up
    add_index :auth_sources, [:id, :type], :name => 'auth_sources_nx01'
  end

  def self.down
    remove_index :auth_sources, :column => [:id, :type]
  end
end
