class AddMissingIndexesToRepositories < ActiveRecord::Migration
  def self.up
    add_index :repositories, :project_id, :name => 'repositories_nx01' 
  end

  def self.down
    remove_index :repositories, :project_id
  end
end
