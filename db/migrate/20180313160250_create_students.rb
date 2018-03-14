class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string      :cohort
      t.string      :email
      t.string      :first_name
      t.string      :last_name
      t.string      :profile
    end
  end
end
