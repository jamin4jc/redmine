class AddMissingIndexesToCustomFields < ActiveRecord::Migration
  def self.up
    add_index :custom_fields, [:id, :type], :name => 'custom_fields_nx01'
  end

  def self.down
    remove_index :custom_fields, :column => [:id, :type]
  end
end
