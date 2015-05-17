require 'decorators'

module Blorgh
  class Engine < ::Rails::Engine
    isolate_namespace Blorgh

    config.to_prepare do
      Decorators.register! Engine.root, Rails.root
    end

  end
end
