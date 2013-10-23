class PageMailDelivery < ActiveRecord::Base
  belongs_to :page
  belongs_to :mail_delivery
end
