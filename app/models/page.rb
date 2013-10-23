class Page < ActiveRecord::Base
  # has_and_belongs_to_many :scenario

  has_many :page_goals, dependent: :destroy

  has_many :site_options, dependent: :destroy
  has_many :mail_deliveries, dependent: :destroy

  has_many :page_preconditions, dependent: :destroy
  has_many :page_specs, dependent: :destroy

  has_many :page_actions, dependent: :destroy

  has_many :page_links, dependent: :destroy

  has_many :questions, as: :questionable, dependent: :destroy
end
