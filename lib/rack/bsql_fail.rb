module Rack #:nodoc:
  class BSQLFail < Struct.new :app, :options

    def initialize app, routes
      @app    = app
      @routes = routes
    end

    def call env
      return @app.call(env) unless @routes.include?(env["PATH_INFO"])
      status, headers, response = @app.call(env)
      request = Rack::Request.new(env)
      if request.params.values.any? { |s| s =~ / and 1=[1,0]/ }
        response = 'GTFO'
      end
      [status, headers, response]
    end
  end
end