class SitePrecondition < ActiveRecord::Base
  has_many :page_site_preconditions
  has_many :pages

  validates :name, presence: true
end
