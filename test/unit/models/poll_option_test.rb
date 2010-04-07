require File.join(File.dirname(__FILE__), '/../../test_helper')

class PollOptionTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert PollOption.create!
  end
  
end