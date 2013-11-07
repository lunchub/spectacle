class Question < ActiveRecord::Base
  belongs_to :questionable, polymorphic: true

  has_many :question_comments, dependent: :destroy
  accepts_nested_attributes_for :question_comments, reject_if: :all_blank, allow_destroy: true

  extend Enumerize
  enumerize :status, in: [:not_solved, :solved]
end
