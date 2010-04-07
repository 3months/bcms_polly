class PollOption < ActiveRecord::Base

  has_many :poll_votes, :dependent => :destroy
  belongs_to :poll
  

end
