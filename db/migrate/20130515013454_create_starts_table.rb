class CreateStartsTable < ActiveRecord::Migration
  def change
  	create_table :starters do |t|

  		t.string :app_name
      	t.string :problem 
      	t.string :solution
      	t.string :user_stories
      	t.string :mock_ups
      	t.string :layouts
        t.string :resources
        t.string :associations
      	t.string :other_considerations
  	end
  end
end
