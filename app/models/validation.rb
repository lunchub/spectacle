class Validation < ActiveRecord::Base
  has_many :page_validations
  has_many :pages, through: :page_validations

  validates :name, presence: true
end
