class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :user_story_id
      t.integer :mock_up_id
      t.integer :layout_id
    end
  end
end
