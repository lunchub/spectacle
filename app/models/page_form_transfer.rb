class PageFormTransfer < ActiveRecord::Base
  belongs_to :page
  belongs_to :to_page, class_name: 'Page', foreign_key: :to_page_id

  validates :element_name, presence: true
  validates :to_page_id, presence: true
end
