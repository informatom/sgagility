class HoboMigration6 < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    add_column :projects, :category_id, :integer

    add_index :projects, [:category_id]
  end

  def self.down
    remove_column :projects, :category_id

    drop_table :categories

    remove_index :projects, :name => :index_projects_on_category_id rescue ActiveRecord::StatementInvalid
  end
end
