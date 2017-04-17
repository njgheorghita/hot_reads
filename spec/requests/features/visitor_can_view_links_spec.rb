require 'rails_helper'

RSpec.describe "Visitor", type: :feature do 
  context "can visit homepage" do 
    it "and see the top ten most read urls" do 
      Link.create(url: "www.one.com")
      Link.create(url: "www.one.com")
      Link.create(url: "www.two.com")
      Link.create(url: "www.two.com")
      Link.create(url: "www.three.com")
      Link.create(url: "www.three.com")
      Link.create(url: "www.four.com")
      Link.create(url: "www.four.com")
      Link.create(url: "www.five.com")
      Link.create(url: "www.five.com")
      Link.create(url: "www.six.com")
      Link.create(url: "www.six.com")
      Link.create(url: "www.seven.com")
      Link.create(url: "www.seven.com")
      Link.create(url: "www.eight.com")
      Link.create(url: "www.eight.com")
      Link.create(url: "www.nine.com")
      Link.create(url: "www.nine.com")
      Link.create(url: "www.ten.com")
      Link.create(url: "www.ten.com")
      Link.create(url: "www.eleven.com")

      visit root_path
      expect(page).to have_content("www.one.com reads: 2")
      expect(page).not_to have_content("www.two.com")
    end
  end
end