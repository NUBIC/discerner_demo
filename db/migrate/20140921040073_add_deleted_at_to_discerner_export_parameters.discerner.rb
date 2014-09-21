# This migration comes from discerner (originally 20130306212818)
class AddDeletedAtToDiscernerExportParameters < ActiveRecord::Migration
  def change
    add_column :discerner_export_parameters, :deleted_at, :datetime
  end
end
