class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :guid
      t.string :name
      t.text :description
      t.string :url
      t.string :facebook_url
      t.string :twitter_url
      t.string :linkedin_url

      t.timestamps null: false
    end
  end
end
