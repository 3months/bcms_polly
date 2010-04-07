class PollVote < ActiveRecord::Base
  belongs_to :poll_option, :counter_cache => :poll_vote_count
  

end
