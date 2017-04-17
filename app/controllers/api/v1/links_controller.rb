class Api::V1::LinksController < ApplicationController

  def create
    link = Link.find_by(url: params[:url])
    if link
      link.reads.create
    else
      new_link = Link.create(url: params[:url])
      new_link.reads.create
    end

    update_tags
  end

  def update_tags
    puts "yo"
  end
end