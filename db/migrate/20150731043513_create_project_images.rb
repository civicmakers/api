class CreateProjectImages < ActiveRecord::Migration
  def change
    create_table :project_images do |t|
      t.integer :project_id
      t.string :image_url

      t.timestamps null: false
    end
  end
end
