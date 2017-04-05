class LinksController < ApplicationController
  def index
    @links = Link.all
    Link.select("links.*, COUNT(reads.id) read_count")
        .joins(:reads)
        .where() # read.created_at is in past 24 hours
        .group("links.id")
        .order("read_count DESC")
  end
end