After do |scenario|
  name = scenario.name.gsub(/\s+/, '_').tr('/', '_')
  scenario.failed? ? print_screen(name.downcase!, 'falhou') : print_screen(name.downcase!, 'passou')
end
