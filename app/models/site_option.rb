class SiteOption < ActiveRecord::Base
  has_many :page_site_options
  has_many :pages, through: :page_site_options

  validates :name, presence: true
end
