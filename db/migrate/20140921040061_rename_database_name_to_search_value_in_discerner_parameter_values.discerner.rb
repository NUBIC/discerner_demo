# This migration comes from discerner (originally 20130213205255)
class RenameDatabaseNameToSearchValueInDiscernerParameterValues < ActiveRecord::Migration
  def change
    rename_column :discerner_parameter_values, :database_name, :search_value
  end
end
