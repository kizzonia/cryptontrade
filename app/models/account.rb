class Account < ApplicationRecord
  extend FriendlyId
  friendly_id :address, use: :slugged

  belongs_to :user
  validates :user, presence: true
  validates :balance, presence: true
  validates :address, presence: true, uniqueness: true
  before_validation :load_defaults
  def load_defaults
    if self.new_record?
      self.balance = 0.00
      self.ctp = 0.00
      self.closing_b = 0.00
      self.opening_b = 0.00
      self.profit_bf = 0.00
      self.gross_pl = 0.00
      self.net_pl = 0.00
    end
  end
end
