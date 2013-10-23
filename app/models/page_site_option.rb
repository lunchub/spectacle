class PageSiteOption < ActiveRecord::Base
  belongs_to :page
  belongs_to :site_option
end
