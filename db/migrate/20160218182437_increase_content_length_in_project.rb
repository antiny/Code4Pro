class IncreaseContentLengthInProject < ActiveRecord::Migration
  def change
  	change_column :projects, :content, :text, :limit => 10000
  end
end
