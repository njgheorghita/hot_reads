require 'rails_helper'

RSpec.describe Read do 
  describe "attributes" do 
    it "include a link" do 
      link = Link.create(url: 'https://www.hi.com')
      read = Read.create(link_id: link.id)

      expect(read).to respond_to(:link)
    end
  end
end