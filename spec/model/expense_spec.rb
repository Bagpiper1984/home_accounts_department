require 'spec_helper'

describe Expense do
  
  before do
    @expense = Expense.new(amount: 100.00, goods_service: "Koka-Kola", note: "For Me")
  end	
  
  subject @expense 
  
  it { should respond_to(:amount) }
  it { should respond_to(:goods_service) }
  it { should respond_to(:note) }
  
  it { should be_valid }
  
  describe "when amount is not present" do
    before { @expense.amount = " " }
    it { should_not be_valid }
  end
  
  describe "when goods_service is not present" do
    before { @expense.goods_service = " " }
    it { should_not be_valid }
  end
  
  describe "when note is not present" do
    before { @expense.note = " " }
    it { should_not be_valid }
  end
  
  describe "when goods_service is too long" do
    before { @expense.goods_service = "a" * 51 }
	it { should_not be_valid }
  end
  
  describe "when note is too long" do
    before { @expense.note = "a" * 101 }
	it { should_not be_valid }
  end
  
end