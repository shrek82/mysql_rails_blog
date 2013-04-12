class Route < ActiveRecord::Base
  attr_accessible :banner_path, :category_id, :city_id, :duration, :img_path, :province_id, :short_title, :tags, :title, :user_id
end
