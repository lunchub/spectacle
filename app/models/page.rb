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

  has_many :page_images, dependent: :destroy

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
