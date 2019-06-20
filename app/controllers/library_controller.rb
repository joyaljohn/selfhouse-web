class LibraryController < ApplicationController
  def index
    @publications = Publication.all
    @categories = PublicationCategory.all
  end

  def category
    @subcategories = PublicationSubCategory.where(publication_category: params[:category])
    @publications = []
    @subcategories.each do |sub|
      @publications << Publication.where(publication_sub_category: sub)
    end
    @categories = PublicationCategory.all
    render :index
  end
end
