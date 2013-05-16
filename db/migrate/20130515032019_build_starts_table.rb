class BuildStartsTable < ActiveRecord::Migration
def change
  	create_table :starts do |t|
  		  t.string :app_name
      	t.string :problem 
      	t.string :solution
      	t.string :user_stories
      	t.string :mock_ups
      	t.string :layouts
      	t.string :other_considerations
  	end
  end
end	

