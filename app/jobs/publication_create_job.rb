# frozen_string_literal: true

class PublicationCreateJob < ApplicationJob
  queue_as :default

  def perform(pub, file_param)
    pub.file.attach(file_param)
    return true if pub.save

    false
  end
end
