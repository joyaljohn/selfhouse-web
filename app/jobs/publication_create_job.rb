class PublicationCreateJob < ApplicationJob
  queue_as :default

  def perform(pub, file_param)
    pub.file.attach(file_param)
    if pub.save
      return true
    else
      return false
    end
  end
end
