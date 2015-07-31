class CreateProjectComponents < ActiveRecord::Migration
  def change
    create_table :project_components do |t|
      t.string :name
      t.text :description
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
