class ChangeUserDisciplineType < ActiveRecord::Migration
  def change

  	change_column	:users, :user_discipline, :string

  end
end
