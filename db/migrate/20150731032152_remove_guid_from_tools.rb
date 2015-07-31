class RemoveGuidFromTools < ActiveRecord::Migration
  def change
    remove_column :tools, :guid
  end
end
