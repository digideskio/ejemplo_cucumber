class Channel < ActiveRecord::Base
  has_many :subscriptions

end
