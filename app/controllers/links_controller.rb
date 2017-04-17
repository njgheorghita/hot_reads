class LinksController < ApplicationController
  def index
    @links = Link.select("links.*, COUNT(reads.id) read_count")
                  .joins(:reads)
                  .group("links.id")
                  .order("read_count DESC")
                  .limit(10)
  end
end