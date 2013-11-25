class CreateEmployeeData < ActiveRecord::Migration
  def change
    create_table :employee_data do |t|

    	t.integer :employee_id
    	t.decimal :rate, precision:4,scale:2
    	t.integer :hours
    	t.integer :days
    	t.integer :jobs
    	t.string  :performance
    	t.integer :days
    	t.integer :fed_withhold
    	t.integer :state_withhold
    	t.decimal :expense, precision:4,scale:2
    	t.decimal :payroll, precision:4,scale:2
    	t.decimal :federal, precision:4,scale:2
    	t.decimal :state, precision:4,scale:2
    	t.decimal :ss, precision:4,scale:2
    	t.decimal :medic, precision:4,scale:2
    	t.decimal :medicare, precision:4,scale:2

      t.timestamps
    end

    add_index  :employee_data, :employee_id
  end
end
