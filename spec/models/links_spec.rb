require 'rails_helper'

RSpec.describe Link do 
  describe "attributes" do 
    it "include reads" do 
      link = Link.create(url: 'https://www.hi.com')

      expect(link).to respond_to(:reads)
    end
  end
end