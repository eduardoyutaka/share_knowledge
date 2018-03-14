class CreateMentors < ActiveRecord::Migration[5.1]
  def change
    create_table :mentors do |t|
      t.string      :email
      t.string      :field
      t.string      :first_name
      t.string      :last_name
    end
  end
end
