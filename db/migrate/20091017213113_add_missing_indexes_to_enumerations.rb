class AddMissingIndexesToEnumerations < ActiveRecord::Migration
  def self.up
    add_index :enumerations, [:id, :type], :name => 'enumerations_nx02'
  end

  def self.down
    remove_index :enumerations, :column => [:id, :type]
  end
end
