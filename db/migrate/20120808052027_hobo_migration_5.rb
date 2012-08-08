class HoboMigration5 < ActiveRecord::Migration
  def self.up
    add_column :projects, :user_id, :integer

    add_index :projects, [:user_id]
  end

  def self.down
    remove_column :projects, :user_id

    remove_index :projects, :name => :index_projects_on_user_id rescue ActiveRecord::StatementInvalid
  end
end
