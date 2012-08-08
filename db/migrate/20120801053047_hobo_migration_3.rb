class HoboMigration3 < ActiveRecord::Migration
  def self.up
    create_table :attachments do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :project_id
      t.string   :document_file_name
      t.string   :document_content_type
      t.integer  :document_file_size
      t.datetime :document_updated_at
    end
    add_index :attachments, [:project_id]
  end

  def self.down
    drop_table :attachments
  end
end
