class PageFormElement < ActiveRecord::Base
  belongs_to :validation
  belongs_to :page
end
