require "rubygems"
require "rake"
require 'detektorfm/version'

desc "Build gem from gemspec"
task :build do
  system "gem build detektorfm.gemspec"
end

desc "Install locally build gem"
task :install do
  ["build"].each do |t|
    system "gem install ./detektorfm-#{DetektorFm::VERSION}.gem"
  end
end

desc "Deploy gem to rubygems.org"
task :deploy do
  ["build"].each do |t|
    system "gem push detektorfm-#{DetektorFm::VERSION}.gem"
  end
end

desc "Tag git repo with release"
task :tag do
  system "git tag v#{DetektorFm::VERSION}"
  puts "Tag v#{DetektorFm::VERSION} created"
end

desc "Push tags to github"
task :push_tags do
  system "git push --tags origin master"
end

#desc "Release new version: build, deploy, and tag"
#task :release do
  #["build", "deploy", "tag", "push_tags"].each do |t|
    #Rake::Task[t].reenable
    #Rake::Task[t].invoke
  #end
#end
