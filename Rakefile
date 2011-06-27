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
