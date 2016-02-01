class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.date :create_date

      t.timestamps
    end
  end
end
