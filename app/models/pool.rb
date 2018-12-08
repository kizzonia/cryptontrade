class Pool < ApplicationRecord
  before_validation :load_defaults
  def load_defaults
    if self.new_record?
      self.pool_ob == 0
      self.pool_cl == 0
      self.pool_pl == 0
      self.tob == 0
    end
  end
end
