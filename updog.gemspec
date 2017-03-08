$spec = Gem::Specification.new do |s|
  s.name = "updog"
  s.version = '0.0.3'
  s.summary = "A Command-Line tool for getting the weather"

  s.authors  = ['Stephen Schor']
  s.email    = ['beholdthepanda@gmail.com']
  s.homepage = 'https://github.com/nodanaonlyzuul/updog'

  s.executables = ['updog']

  s.files = Dir['bin/*','lib/**/*']
  s.rubyforge_project = 'nowarning'

  s.add_dependency('nokogiri', '~> 1.7')
end
