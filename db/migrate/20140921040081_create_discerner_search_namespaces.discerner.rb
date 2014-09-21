# This migration comes from discerner (originally 20140915032427)
class CreateDiscernerSearchNamespaces < ActiveRecord::Migration
  def change
    create_table :discerner_search_namespaces do |t|
      t.integer :search_id
      t.string :namespace_type
      t.integer :namespace_id
    end
  end
end
