require 'test_helper'

class ArtdbTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Artdb.new.valid?
  end
end
