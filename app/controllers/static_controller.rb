# frozen_string_literal: true

class StaticController < ApplicationController
  def home
    @newpubs = Publication.order(created_at: :asc).last(5)
  end

  def landing; end
end
