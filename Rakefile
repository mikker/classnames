require 'bundler/gem_tasks'

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.test_files = Dir['test/**/*_test.rb']
end

desc "Run the tests"
task default: :test
