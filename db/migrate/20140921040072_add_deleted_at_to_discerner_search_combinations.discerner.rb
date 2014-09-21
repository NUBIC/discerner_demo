# This migration comes from discerner (originally 20130306212527)
class AddDeletedAtToDiscernerSearchCombinations < ActiveRecord::Migration
  def change
    add_column :discerner_search_combinations, :deleted_at, :datetime
  end
end
