class CreateToolUsages < ActiveRecord::Migration
  def change
    create_table :tool_usages do |t|
      t.integer :project_component_id
      t.integer :tool_id

      t.timestamps null: false
    end
  end
end
