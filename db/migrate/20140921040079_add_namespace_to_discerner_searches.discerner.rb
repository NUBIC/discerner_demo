# This migration comes from discerner (originally 20140815214547)
class AddNamespaceToDiscernerSearches < ActiveRecord::Migration
  def change
    add_column :discerner_searches, :namespace_id, :integer
    add_column :discerner_searches, :namespace_type, :string
  end
end
