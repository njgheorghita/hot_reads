require 'rails_helper'

RSpec.describe "Links API endpoints", type: :request do
  before do 

  end

  it "creates a link with a read if link doesn't exist" do 
    expect(Link.count).to eq 0

    post api_v1_links_path, params: { url:"www.google.com" }
    
    expect(response).to be_success

    expect(Link.count).to eq 1
    link = Link.first
    expect(link.reads.count).to eq 1
  end

  it "adds a read to a link if link exists" do 
    link = Link.create(url: "www.google.com")
    expect(Link.count).to eq 1

    post api_v1_links_path, params: { url:"www.google.com" }
    
    expect(response).to be_success

    expect(Link.count).to eq 1
    expect(link.reads.count).to eq 1
  end
end