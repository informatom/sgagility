class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string   :name
      t.date     :start_date
      t.string   :author
      t.date     :end_date
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :stories do |t|
      t.string   :name
      t.text     :description
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :project_id
    end
    add_index :stories, [:project_id]
  end

  def self.down
    drop_table :projects
    drop_table :stories
  end
end
