class AddMissingIndexesToAttachments < ActiveRecord::Migration
  def self.up
    add_index :attachments, [:container_id, :container_type], :name => 'attachments_nx01'
    add_index :attachments, :author_id,                       :name => 'attachments_nx02'
  end

  def self.down
    remove_index :attachments, :column => [:container_id, :container_type]
    remove_index :attachments, :author_id
  end
end
