class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first
      t.string :last
      t.string :middle
      t.date   :birth
      t.string :city
      t.string :state
      t.string :street
      t.string :email
      t.integer :phone
      t.integer :employeeid
      t.date    :hire


      t.timestamps
    end
  end
end
