# frozen_string_literal: true

desc 'Runs CI tasks'
task :ci do
  Rake::Task['spec'].invoke
  Rake::Task['rubocop'].invoke
end
