class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.text :comment
      t.datetime :date
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
