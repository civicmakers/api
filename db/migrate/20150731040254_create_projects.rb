class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :avatar_url
      t.integer :profile_id

      t.timestamps null: false
    end
  end
end
