class AddNewFields < ActiveRecord::Migration
  def self.up
    add_column :scenarios, :GameName, :string
    add_column :scenarios, :GameDescription, :string
    add_column :scenarios, :EntryType, :boolean
      end

  def self.down
    remove_column :scenarios, :GameName
    remove_column :scenarios, :GameDescription
    remove_column :scenarios, :EntryType
      end
end
