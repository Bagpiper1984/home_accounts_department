class Expense < ActiveRecord::Base
  attr_accessible :amount, :goods_service, :note
end
