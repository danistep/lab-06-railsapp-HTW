require 'rails_helper'

describe "total price", :type => :feature do
  before :each do
    @customer = create(:customer_with_orders)
  end



it "calculates total with discount" do
    visit "/customers/#{@customer.id}"

    expect(@customer.discount).to eq(11)

    expect(@customer.orders.sum(:price)).to eq(166)

    expect(page).to have_content 'Total price with discount'

	expect((@customer.orders.sum(:price) * (1 - @customer.discount/100))). to eq(147.74) 


end

end