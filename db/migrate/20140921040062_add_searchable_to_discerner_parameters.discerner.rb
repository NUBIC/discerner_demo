# This migration comes from discerner (originally 20130215165416)
class AddSearchableToDiscernerParameters < ActiveRecord::Migration
  def change
    add_column :discerner_parameters, :searchable, :boolean
  end
end
