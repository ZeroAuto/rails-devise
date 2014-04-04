class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :state
      t.date :joined_date
      t.date :left_date
      t.string :instruments
      t.string :email
      t.references :user

      t.timestamps
    end
  end
end
