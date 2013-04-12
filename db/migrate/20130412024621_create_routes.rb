class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :title
      t.string :short_title
      t.string :tags
      t.integer :category_id
      t.integer :user_id
      t.string :img_path
      t.string :banner_path
      t.integer :province_id
      t.integer :city_id
      t.integer :duration

      t.timestamps
    end
  end
end
