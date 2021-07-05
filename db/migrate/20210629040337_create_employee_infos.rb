class CreateEmployeeInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_infos do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
