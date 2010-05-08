class AddIndexToSettingsName < ActiveRecord::Migration
  def self.up
    add_index :settings, :name, :name => 'settings_nx02'
  end

  def self.down
    remove_index :settings, :name
  end
end
