class LibraryController < ApplicationController
  def index
    @publications = Publication.all
  end
end
