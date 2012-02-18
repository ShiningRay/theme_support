module ThemeSupport
  module ControllerMethod
    def theme_support
      include ThemeSupport::ControllerExtensions
    end
  end
end
require 'theme_support/controller_extensions'
require 'theme_support/routing_extensions'

ActionController::Base.extend(ThemeSupport::ControllerMethod)
ActionController::Routing::RouteSet::Mapper.send :include, ThemeSupport::RoutingExtensions
