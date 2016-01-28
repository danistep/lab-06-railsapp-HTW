require 'rails_helper'

describe "orders have LineItems", :type => :feature do
  before :each do
    @order = create(:order_with_line_items) 
  end

it "creates LineItems/Pumpkins association" do
  expect(@order.line_items.count).to eq(2)
  expect(@order.line_items.first.pumpkin).not_to be_nil
  expect(@order.line_items.first.amount).to eq(2)
end

it "shows line items in order" do
    visit "/orders/#{@order.id}"

    expect(page).to have_link "#{@order.line_items.first.pumpkin.name}"

    


  
   
  end
end
