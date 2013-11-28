class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first
      t.string :last
      t.string :city
      t.string :street
      t.string :email
      t.integer  :phone
      t.integer  :c_id
    

      t.timestamps
    end
  end
end
