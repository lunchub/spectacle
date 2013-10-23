class PageImage < ActiveRecord::Base
  belongs_to :page

  mount_uploader :image, PageImageUploader 
end
