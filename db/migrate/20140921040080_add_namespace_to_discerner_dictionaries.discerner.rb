# This migration comes from discerner (originally 20140815214629)
class AddNamespaceToDiscernerDictionaries < ActiveRecord::Migration
  def change
    add_column :discerner_dictionaries, :namespace_id, :integer
    add_column :discerner_dictionaries, :namespace_type, :string
  end
end
