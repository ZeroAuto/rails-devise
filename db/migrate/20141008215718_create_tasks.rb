class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.float :time
      t.date :date

      t.timestamps
    end
  end
end
