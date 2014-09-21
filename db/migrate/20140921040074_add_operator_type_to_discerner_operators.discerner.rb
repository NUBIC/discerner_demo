# This migration comes from discerner (originally 20130311190717)
class AddOperatorTypeToDiscernerOperators < ActiveRecord::Migration
  def change
    add_column :discerner_operators, :operator_type, :string
  end
end
