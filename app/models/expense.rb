class Expense < ActiveRecord::Base
  attr_accessible :amount, :goods_service, :note, :created_at
  
  validate :amount, presence: true
  validate :goods_service, presence: true, length: { maximum: 50 }
  validate :note, presence: true, length: { maximum: 100 }
  
  MONTHS = ["January", "", "March", "", "May", "June", "July", "August", "September", "October", "November", "December"]
end
