class EmployeeAndDepartmentsMigration < ActiveRecord::Migration

  def change
    create_table :employees do |t|
      t.integer :department_id
      t.string :name
      t.string :email
      t.string :phone
      t.integer :salary
      t.text :review
      t.boolean :satisfactory
    end

    create_table :departments do |t|
      t.string :name
      t.integer :company_id
    end

    create_table :companies do |t|
      t.string :name
    end
  end
end
