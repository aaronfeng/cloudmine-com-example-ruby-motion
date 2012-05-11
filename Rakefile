$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.libs << '/usr/lib/libz.1.1.3.dylib'

  app.frameworks += [
    'CFNetwork',
    'SystemConfiguration',
    'MobileCoreServices'
  ]

    app.name = 'CloudMine Test'
    app.vendor_project('vendor/CloudMine.framework',
                       :static,
                       :products => ['CloudMine'],
                       :headers_dir => 'Headers')
end
