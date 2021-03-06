class MailDelivery < ActiveRecord::Base
  has_paper_trail

  has_many :page_mail_deliveries
  has_many :pages

  validates :name, presence: true
end
