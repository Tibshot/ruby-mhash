t = Time.now
Gem::Specification.new do |gem|
  gem.authors = ["Thibaut Deloffre"]
  gem.email = ["tib@rocknroot.org"]
  gem.summary = "Mhash library extension for Ruby"
  gem.description = "Mhash library extension for Ruby"
  gem.homepage = "http://github.com/TibshoOT/ruby-mhash"
  gem.date = t.strftime("%Y-%m-%d")
  gem.name = "mhash"
  gem.files = `git ls-files`.split("\n")
  gem.extensions = ["ext/mhash/extconf.rb"]
  gem.require_paths = ["lib", "ext"]
  gem.version = "1.2"
  gem.extra_rdoc_files = ["LICENSE.txt"]
  gem.licenses = ["BSD"]
end
