# This migration comes from discerner (originally 20130222070959)
class AddExportColumnsToDiscernerParameters < ActiveRecord::Migration
  def change
    add_column :discerner_parameters, :export_model, :string
    add_column :discerner_parameters, :export_method, :string
  end
end
