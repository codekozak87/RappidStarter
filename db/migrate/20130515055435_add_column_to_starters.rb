class AddColumnToStarters < ActiveRecord::Migration
  def change

  	add_column :starters, :resources, :string
  	add_column :starters, :associations, :string
 
  end
end
