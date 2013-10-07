class Page < ActiveRecord::Base
  has_and_belongs_to_many :scenario

  has_many :page_actions, dependent: :destroy
end
