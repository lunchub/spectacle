class PageConnectedPage < ActiveRecord::Base
  belongs_to :page
  belongs_to :connected_page, class_name: 'Page', foreign_key: 'connected_page_id'
end
