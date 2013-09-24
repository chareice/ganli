class AddQqPhoneTeacherPositionToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :qq, :string
  	add_column :users, :phone, :string
  	add_column :users, :teacher_position, :string
  end
end
