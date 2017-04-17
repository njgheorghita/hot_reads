require 'rails_helper'

RSpec.describe "Visitor", type: [:feature, :request] do 
  context "can visit homepage" do 

    before :each do 
      post api_v1_links_path, params: { url:"www.one.com" }
      post api_v1_links_path, params: { url:"www.one.com" }
      post api_v1_links_path, params: { url:"www.two.com" }
      post api_v1_links_path, params: { url:"www.two.com" }
      post api_v1_links_path, params: { url:"www.three.com" }
      post api_v1_links_path, params: { url:"www.three.com" }
      post api_v1_links_path, params: { url:"www.four.com" }
      post api_v1_links_path, params: { url:"www.four.com" }
      post api_v1_links_path, params: { url:"www.five.com" }
      post api_v1_links_path, params: { url:"www.five.com" }
      post api_v1_links_path, params: { url:"www.six.com" }
      post api_v1_links_path, params: { url:"www.six.com" }
      post api_v1_links_path, params: { url:"www.seven.com" }
      post api_v1_links_path, params: { url:"www.seven.com" }
      post api_v1_links_path, params: { url:"www.eight.com" }
      post api_v1_links_path, params: { url:"www.eight.com" }
      post api_v1_links_path, params: { url:"www.nine.com" }
      post api_v1_links_path, params: { url:"www.nine.com" }
      post api_v1_links_path, params: { url:"www.ten.com" }
      post api_v1_links_path, params: { url:"www.ten.com" }
      post api_v1_links_path, params: { url:"www.ten.com" }
      post api_v1_links_path, params: { url:"www.eleven.com" }
    end

    it "and see the top ten most read urls and corresponding tags" do 
      visit root_path
      expect(page).to have_content("www.one.com reads: 2 tag: top link")
      expect(page).to have_content("www.ten.com reads: 3 tag: hot")
      expect(page).not_to have_content("www.eleven.com")
    end
  end
end