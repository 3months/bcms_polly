require File.join(File.dirname(__FILE__), '/../../test_helper')

class PollVoteTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert PollVote.create!
  end
  
end