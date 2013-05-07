require 'spec_helper'

describe "Views" do
 
  subject { page }

  describe "Index page" do
    before { visit root_path }
  
    it { should have_selector('h1', text: 'Listin Expenses') }
	it { should have_selector('tr', text: 'Date') }
  end

end