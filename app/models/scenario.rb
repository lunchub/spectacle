class Scenario < ActiveRecord::Base
  has_one :flowchart, dependent: :destroy
  accepts_nested_attributes_for :flowchart, :allow_destroy => true

  validates_presence_of :title
  validates_uniqueness_of :title

end
