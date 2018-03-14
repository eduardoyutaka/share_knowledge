class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.belongs_to  :team, index: true
      t.string      :big_idea
      t.string      :description
      t.string      :name
    end
  end
end
