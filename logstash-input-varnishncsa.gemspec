Gem::Specification.new do |s|
  s.name = 'logstash-input-varnishncsa'
  s.version = '1.0.0'
  s.licenses = ['Apache-2.0']
  s.summary = "This input streams the output from varnishncsa - giving live logs running through Varnish"
  s.description = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program"
  s.authors = ["Elastic"]
  s.email = 'info@elastic.co'
  s.homepage = "http://www.elastic.co/guide/en/logstash/current/index.html"
  s.require_paths = ["lib"]

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "input" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core", "= 5.6.16"
  s.add_runtime_dependency 'logstash-codec-json', "~> 3"
  s.add_development_dependency 'logstash-devutils', '>= 0.0.16'
end
