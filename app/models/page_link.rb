class PageLink < ActiveRecord::Base
  belongs_to :from_page, class_name: 'PageLink'
  belongs_to :to_page, class_name: 'PageLink'
end
