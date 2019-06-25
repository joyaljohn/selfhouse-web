class PublicationUpdateJob < ApplicationJob
  queue_as :default

  def perform(pub, params)
    if pub.update(params)
      return true
    else
      return false
    end
  end
end
