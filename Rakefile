task "default" => ["open", "serve"]

task "open" do
  sh "(sleep 2; open http://localhost:4321) &"
end

task "serve" do
  sh "pith -i preso serve"
end

require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'spec/**/*_spec.rb'
  t.rspec_opts = ["--colour", "--format", "nested"]
end

namespace "github" do

  desc "publish the site to GitHub Pages"
  task "publish" => ["update", "push"]
  
  task "update" do
    tmpdir = "/tmp/art-of-being-lazy"
    sh <<-BASH
      set -e 
      rm -fr #{tmpdir}; pith -i preso -o #{tmpdir} build
      rm -fr #{tmpdir}/.sass-cache
      git checkout gh-pages && git pull origin gh-pages
      rm -r * && cp -r #{tmpdir}/* .
      git add -A .
      git commit -m "Regenerate"
      git checkout master
    BASH
  end
  
  task "push" do
    sh "git push origin gh-pages:gh-pages"
  end
  
end
