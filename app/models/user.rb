class User < ActiveRecord::Base
has_many :orders, :foreign_key => "user_id"

end
