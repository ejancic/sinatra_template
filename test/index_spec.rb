require_relative "../test/test_helper"

class IndexSpec < MiniTest::Unit::TestCase

  include Rack::Test::Methods

  def app
    App
  end

  def test_index
    get '/'
    assert last_response.ok?
  end

end