class HoboMigration7 < ActiveRecord::Migration
  def self.up
    add_column :categories, :place, :string
  end

  def self.down
    remove_column :categories, :place
  end
end
