class CreateUserStories < ActiveRecord::Migration
  def change
    create_table :user_stories do |t|
      t.string :title
      t.string :description
      t.string :designer_notes
      t.string :vote_count
      t.string :vote_id
    end
  end
end
