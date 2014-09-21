# This migration comes from discerner (originally 20130218230257)
class AddExclusiveToDiscernerParameters < ActiveRecord::Migration
  def change
    add_column :discerner_parameters, :exclusive, :boolean
  end
end
