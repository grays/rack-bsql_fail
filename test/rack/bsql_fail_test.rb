require 'test_helper'
require 'rack/mock'

class Rack::GoogleAnalyticsTest < Test::Unit::TestCase

  def test_hikacks_response_for_query_a
    assert_equal 'GTFO', request('/search?query=+and+1%3D1').body
  end

  def test_hikacks_response_for_query_b
    assert_equal 'GTFO', request('/search?query=+and+1%3D0').body
  end

  def test_doesnt_hikack_response_other_queries_on_the_route
    assert_equal HTML_DOC, request('/search?query=foo').body
  end

  def test_doesnt_hikack_response_for_other_routes
    assert_equal HTML_DOC, request('/foo?bar=+and+1%3D1').body
  end

  def test_doesnt_hikack_response_for_anything_else
    assert_equal HTML_DOC, request.body
  end

  private

  HTML_DOC = "<html></html>"

  def request path = '/', opts = {}
    Rack::MockRequest.new(app(opts)).get(path)
  end

  def app opts = {}
    opts[:content_type] ||= "text/html"
    opts[:body]         ||= [HTML_DOC]
    @app = lambda { |env| [200, { 'Content-Type' => opts[:content_type] }, opts[:body]] }
    Rack::BSQLFail.new(@app, ["/search"])
  end
end
