class Scenario < ActiveRecord::Base
  has_one :flowchart, dependent: :destroy
  accepts_nested_attributes_for :flowchart, :allow_destroy => true
end
