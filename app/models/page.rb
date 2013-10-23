class Page < ActiveRecord::Base
  # has_and_belongs_to_many :scenario

  has_many :page_goals, dependent: :destroy
  accepts_nested_attributes_for :page_goals, allow_destroy: true

  has_many :site_options, dependent: :destroy
  accepts_nested_attributes_for :site_options, allow_destroy: true

  has_many :mail_deliveries, dependent: :destroy
  accepts_nested_attributes_for :mail_deliveries, allow_destroy: true

  has_many :page_preconditions, dependent: :destroy
  accepts_nested_attributes_for :page_preconditions, allow_destroy: true

  has_many :page_specs, dependent: :destroy
  accepts_nested_attributes_for :page_specs, allow_destroy: true

  has_many :page_actions, dependent: :destroy
  accepts_nested_attributes_for :page_actions, allow_destroy: true

  has_many :page_links, dependent: :destroy
  accepts_nested_attributes_for :page_links, allow_destroy: true

  has_many :questions, as: :questionable, dependent: :destroy
  accepts_nested_attributes_for :questions, allow_destroy: true

  has_many :page_images, dependent: :destroy
  accepts_nested_attributes_for :page_images, allow_destroy: true


  validates :title, presence: true

  def has_page_goals?
    self.page_goals.present?
  end

  def has_site_options?
    self.site_options.present?
  end

  def has_mail_deliveries?
    self.mail_deliveries.present?
  end

  def has_page_preconditions?
    self.page_preconditions.present?
  end

  def has_page_specs?
    self.page_specs.present?
  end

  def has_page_actions?
    self.page_actions.present?
  end

  def has_page_links?
    self.page_links.present?
  end

  def has_questions?
    self.questions.present?
  end

  def has_page_images?
    self.page_images.present?
  end
end
