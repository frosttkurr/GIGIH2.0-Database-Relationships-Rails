class Order < ApplicationRecord
  belongs_to :customer

  def self.order_date
    date = []
    self.all.each do | x |
      date << x[:order_date]
    end
    return date
  end
end
