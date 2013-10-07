class Scenario < ActiveRecord::Base
  has_one :flowchart, dependent: :destroy
  accepts_nested_attributes_for :flowchart, :allow_destroy => true

  has_and_belongs_to_many :pages

  validates_presence_of :title
  validates_uniqueness_of :title

end
