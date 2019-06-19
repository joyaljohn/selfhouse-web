class LibraryController < ApplicationController
  def index
    @publications = Publications.all
  end
end
