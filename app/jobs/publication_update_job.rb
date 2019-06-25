# frozen_string_literal: true

class PublicationUpdateJob < ApplicationJob
  queue_as :default

  def perform(pub, params)
    if pub.update(params)
      true
    else
      false
    end
  end
end
