require 'rails_helper'

describe "customer page", :type => :feature do
  before :each do
    @customer = create(:customer_with_orders_and_price)
  end



it "shows an order with price" do
    visit "/customers/#{@customer.id}"

    expect(@customer.orders.sum(:price)).to be > 1

    expect(page).to have_content 'Total price'

end

end