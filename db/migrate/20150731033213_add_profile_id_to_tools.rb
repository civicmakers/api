class AddProfileIdToTools < ActiveRecord::Migration
  def change
    add_column :tools, :profile_id, :int
  end
end
