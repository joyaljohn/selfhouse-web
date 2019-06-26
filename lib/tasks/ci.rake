# frozen_string_literal: true

desc 'Runs CI tasks'
task :ci do
  Rake::Task['spec'].invoke
  Rake::Task['rubocop'].invoke
  Rake::Task['assets:precompile'].invoke
  Rake::Task['active_storage:clean'].invoke
  Rake::Task['db:reset'].invoke
end
