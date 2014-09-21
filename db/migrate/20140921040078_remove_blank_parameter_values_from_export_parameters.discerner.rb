# This migration comes from discerner (originally 20140227191827)
class RemoveBlankParameterValuesFromExportParameters < ActiveRecord::Migration
  def up
    Discerner::Parameter.where(:search_model => nil).each do |p|
      p.parameter_values.destroy_all
    end
  end

  def down
  end
end
