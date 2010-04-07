module Cms::Routes
  def routes_for_bcms_polly
    namespace(:cms) do |cms|
      cms.content_blocks :poll_votes
      cms.content_blocks :poll_options
      cms.content_blocks :polls
    end  
  end
end
