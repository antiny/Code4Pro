class IncreaseNameLengthInProject < ActiveRecord::Migration
  def change
  	change_column :projects, :name, :string, :limit => 1000
  end
end
