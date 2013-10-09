require "bundler/gem_tasks"
require "detektorfm/version"

desc "Tag git repo with release"
task :tag do
  system "git tag v#{DetektorFm::VERSION}"
  puts "Tag v#{DetektorFm::VERSION} created"
end

desc "Push tags to github"
task :push_tags do
  system "git push --tags origin master"
end

