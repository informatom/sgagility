class HoboMigration2 < ActiveRecord::Migration
  def self.up
    add_column :stories, :think_date, :date
    add_column :stories, :start_date, :date
    add_column :stories, :end_date, :date
    add_column :stories, :responsable, :string
    add_column :stories, :calle, :string
    add_column :stories, :localidad, :string
    add_column :stories, :codigo_postal, :string
    add_column :stories, :email, :string
    change_column :stories, :description, :string, :limit => 255
  end

  def self.down
    remove_column :stories, :think_date
    remove_column :stories, :start_date
    remove_column :stories, :end_date
    remove_column :stories, :responsable
    remove_column :stories, :calle
    remove_column :stories, :localidad
    remove_column :stories, :codigo_postal
    remove_column :stories, :email
    change_column :stories, :description, :text
  end
end
