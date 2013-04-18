class Comments < ActiveRecord::Base
  attr_accessible :content, :user_id, :event_id
end
