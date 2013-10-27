class Validation < ActiveRecord::Base
  has_paper_trail

  has_many :page_validations
  has_many :pages, through: :page_validations

  validates :name, presence: true
end
