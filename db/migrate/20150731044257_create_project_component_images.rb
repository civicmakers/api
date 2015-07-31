class CreateProjectComponentImages < ActiveRecord::Migration
  def change
    create_table :project_component_images do |t|
      t.integer :project_component_id
      t.string :image_url

      t.timestamps null: false
    end
  end
end
