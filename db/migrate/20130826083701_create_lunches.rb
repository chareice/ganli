class CreateLunches < ActiveRecord::Migration
  def change
    create_table :lunches do |t|
      t.date :date
      t.integer :teacher

      t.timestamps
    end
  end
end
