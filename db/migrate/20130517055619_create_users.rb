class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :user_discipline
      t.string :email
      t.string :voted_on
      t.string :accountable_for
    end
  end
end
