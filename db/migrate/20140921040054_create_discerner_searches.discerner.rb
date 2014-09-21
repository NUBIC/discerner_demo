# This migration comes from discerner (originally 20121008180829)
class CreateDiscernerSearches < ActiveRecord::Migration
  def change
    create_table :discerner_searches do |t|
      t.string :name
      t.string :username
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
