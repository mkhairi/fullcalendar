module Fullcalendar
  class Engine < ::Rails::Engine
    initializer 'fullcalendar.assets.precompile' do |app|
      %w(stylesheets javascripts).each do |sub|
        app.config.assets.paths << root.join('vendor/assets', sub).to_s
      end
    end
  end
end
