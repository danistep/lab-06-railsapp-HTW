require 'rails_helper'

describe "pumkins sorting", :type => :feature do
  before :each do
    create(:kakai)
    create(:redkuri)
   	create(:carnival)
   	create(:acorn)
   	create(:babybear)
  end

it "has sort links" do        
	visit "/pumpkins/"

    expect(page).to have_link 'Name'
    expect(page).to have_link 'Color'
    expect(page).to have_link 'Size'
    expect(page).to have_link 'Price'
end


it "allows to sort pumkins" do
	expect(Pumpkin.order(:name).first.name).to eq("Acorn")
	expect(Pumpkin.order(:name).last.name).to eq("Red Kuri")




end

end

