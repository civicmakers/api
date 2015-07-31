class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :description
      t.string :avatar_url
      t.string :url
      t.string :facebook_url
      t.string :twitter_url
      t.string :linkedin_url

      t.timestamps null: false
    end
  end
end
