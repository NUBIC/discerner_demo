# This migration comes from discerner (originally 20121008160313)
class CreateDiscernerOperatorsParameterTypes < ActiveRecord::Migration
  def change
    create_table :discerner_operators_parameter_types do |t|
      t.belongs_to :operator
      t.belongs_to :parameter_type
     end
  end
end
