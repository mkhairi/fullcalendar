module Fullcalendar
  class Engine < ::Rails::Engine
    initializer 'fullcalendar.assets.precompile' do |app|
      %w(stylesheets javascripts images).each do |sub|
        app.config.assets.paths << root.join('app/assets', sub).to_s
      end
    end
  end
end
