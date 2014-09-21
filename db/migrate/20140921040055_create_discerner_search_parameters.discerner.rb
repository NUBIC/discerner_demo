# This migration comes from discerner (originally 20121008182443)
class CreateDiscernerSearchParameters < ActiveRecord::Migration
  def change
    create_table :discerner_search_parameters do |t|
      t.integer :search_id
      t.integer :parameter_id
      t.integer :display_order

      t.timestamps
    end
  end
end
