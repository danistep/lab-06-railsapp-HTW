require 'rails_helper'

describe "order list", :type => :feature do
	before :each do
		@customer = create(:customer_with_orders)
	end



it "shows an order list" do
    visit "/customers/#{@customer.id}"
    # customer.where(name: "Dagobert").first.orders.count
    expect(@customer.orders.count).to be > 1

    expect(page).to have_content 'waiting'

end

end