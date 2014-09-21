# This migration comes from discerner (originally 20130306015019)
class ChangeDiscernerParameterValuesName < ActiveRecord::Migration
  def up
    change_column :discerner_parameter_values, :name, :string, :limit => 1000
  end

  def down
    change_column :discerner_parameter_values, :name, :string, :limit => 255
  end
end
