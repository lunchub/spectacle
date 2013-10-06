class Scenario < ActiveRecord::Base
  has_one :flowchart, dependent: :destroy
end
