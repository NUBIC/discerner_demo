# This migration comes from discerner (originally 20121211213215)
class AddDictionaryIdToDiscernerSearches < ActiveRecord::Migration
  def change
    add_column :discerner_searches, :dictionary_id, :integer
  end
end
