class Page < ActiveRecord::Base
  has_paper_trail
  # has_and_belongs_to_many :scenario

  # 1:N
  has_many :page_links, dependent: :destroy
  accepts_nested_attributes_for :page_links, reject_if: :all_blank, allow_destroy: true

  has_many :page_goals, dependent: :destroy
  accepts_nested_attributes_for :page_goals, reject_if: :all_blank, allow_destroy: true

  has_many :site_preconditions, dependent: :destroy
  accepts_nested_attributes_for :site_preconditions, reject_if: :all_blank, allow_destroy: true

  has_many :page_specs, dependent: :destroy
  accepts_nested_attributes_for :page_specs, reject_if: :all_blank, allow_destroy: true

  has_many :page_actions, dependent: :destroy
  accepts_nested_attributes_for :page_actions, reject_if: :all_blank, allow_destroy: true

  has_many :questions, as: :questionable, dependent: :destroy
  accepts_nested_attributes_for :questions, reject_if: :all_blank, allow_destroy: true

  has_many :page_images, dependent: :destroy
  accepts_nested_attributes_for :page_images, reject_if: :all_blank, allow_destroy: true

  # N:M (through)
  has_many :page_site_options
  has_many :site_options, through: :page_site_options
  accepts_nested_attributes_for :page_site_options, reject_if: :all_blank, allow_destroy: true

  has_many :page_mail_deliveries
  has_many :mail_deliveries, through: :page_mail_deliveries
  accepts_nested_attributes_for :page_mail_deliveries, reject_if: :all_blank, allow_destroy: true

  has_many :page_site_preconditions
  has_many :site_preconditions, through: :page_site_preconditions
  accepts_nested_attributes_for :page_site_preconditions, reject_if: :all_blank, allow_destroy: true

  # 自己参照 N:N
  # has_many :from_page_link_relations, foreign_key: 'from_page_id', class_name: 'PageLink'
  # has_many :to_page_link_relations, foreign_key: 'to_page_id', class_name: 'PageLink'
  # has_many :from_pages, through: :from_page_link_relations, source: 'to_page'
  # has_many :to_pages, through: :to_page_link_relations, source: 'from_page'
  # accepts_nested_attributes_for :from_pages, reject_if: :all_blank, allow_destroy: true
  # accepts_nested_attributes_for :to_pages, reject_if: :all_blank, allow_destroy: true


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
