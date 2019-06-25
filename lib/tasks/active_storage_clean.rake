require 'fileutils'
namespace :active_storage do
  desc "Clean active_storage data (for development)"
  task :clean do
    if Rails.env.development?
      ActiveStorage::Attachment.all.each { |at| at.purge } 
      FileUtils.rm_rf(Rails.root.join('storage'))
      FileUtils.mkdir(Rails.root.join('storage'))
      FileUtils.touch(Rails.root.join('storage', '.keep'))
    end
  end
end
