module Exposition
  class Engine < ::Rails::Engine
    isolate_namespace Exposition
    config.generators do |g|
      g.test_framework      :rspec,        :fixture => false
      g.fixture_replacement :factory_bot, :dir => 'spec/factories'
      g.assets false
      g.helper false
    end
    initializer "exposition.assets.precompile" do |app|
        app.config.assets.precompile += %w( exposition/twitter.svg )
    end
  end
end
