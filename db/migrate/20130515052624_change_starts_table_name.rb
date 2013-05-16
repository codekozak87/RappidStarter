class ChangeStartsTableName < ActiveRecord::Migration
  def change

  	rename_table :starts, :starters

  end
end
