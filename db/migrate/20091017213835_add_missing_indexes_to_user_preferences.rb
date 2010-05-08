class AddMissingIndexesToUserPreferences < ActiveRecord::Migration
  def self.up
    add_index :user_preferences, :user_id, :name => 'user_prefs_nx01'
  end

  def self.down
    remove_index :user_preferences, :user_id
  end
end
