# This migration comes from discerner (originally 20130221172826)
class AddUniqueIdentifierToDiscernerParameters < ActiveRecord::Migration
  def change
    add_column :discerner_parameters, :unique_identifier, :string
  end
end
