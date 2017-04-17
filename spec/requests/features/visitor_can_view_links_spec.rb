require 'rails_helper'

RSpec.describe "Visitor", type: :feature do 
  context "can visit homepage" do 

    before :each do 
      one = Link.create(url: "www.one.com")
      two = Link.create(url: "www.two.com")
      three = Link.create(url: "www.three.com")
      four = Link.create(url: "www.four.com")
      five = Link.create(url: "www.five.com")
      six = Link.create(url: "www.six.com")
      seven = Link.create(url: "www.seven.com")
      eight = Link.create(url: "www.eight.com")
      nine = Link.create(url: "www.nine.com")
      ten = Link.create(url: "www.ten.com")
      eleven = Link.create(url: "www.eleven.com")

      Read.create(link_id: one.id)
      Read.create(link_id: one.id)
      Read.create(link_id: two.id)
      Read.create(link_id: two.id)
      Read.create(link_id: three.id)
      Read.create(link_id: three.id)
      Read.create(link_id: four.id)
      Read.create(link_id: four.id)
      Read.create(link_id: five.id)
      Read.create(link_id: five.id)
      Read.create(link_id: six.id)
      Read.create(link_id: six.id)
      Read.create(link_id: seven.id)
      Read.create(link_id: seven.id)
      Read.create(link_id: eight.id)
      Read.create(link_id: eight.id)
      Read.create(link_id: nine.id)
      Read.create(link_id: nine.id)
      Read.create(link_id: ten.id)
      Read.create(link_id: ten.id)
      Read.create(link_id: ten.id)
      Read.create(link_id: eleven.id)
    end

    it "and see the top ten most read urls and corresponding tags" do 
      visit root_path
      expect(page).to have_content("www.one.com reads: 2 tag: hot")
      expect(page).to have_content("www.ten.com reads: 3 tag: top link")
      expect(page).not_to have_content("www.eleven.com")
    end
  end
end