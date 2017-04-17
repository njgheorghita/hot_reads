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
    Link.all.each do |link|
      link.tag = nil
      link.save
    end
    
    Link.select("links.*, COUNT(reads.id) read_count")
      .joins(:reads)
      .group("links.id")
      .order("read_count DESC")
      .limit(10).each do |link|
      link.tag = "top link"
      link.save
    end

    Link.select("links.*, COUNT(reads.id) read_count")
      .joins(:reads)
      .group("links.id")
      .order("read_count DESC")
      .limit(1).each do |link|
      link.tag = "hot"
      link.save
    end
  end
end