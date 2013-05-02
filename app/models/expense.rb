class Expense < ActiveRecord::Base
  attr_accessible :amount, :goods_service, :note
  
  validate :amount, presence: true
  validate :goods_service, presence: true, length: { maximum: 50 }
  validate :note, presence: true length: { maximum: 100 }
end
