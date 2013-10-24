class Question < ActiveRecord::Base
  belongs_to :questionable, polymorphic: true

  has_many :answers, dependent: :destroy
  accepts_nested_attributes_for :answers, reject_if: :all_blank, allow_destroy: true
end
