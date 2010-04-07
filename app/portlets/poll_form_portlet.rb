class PollFormPortlet < Portlet

  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
     
  def render
    @poll = Poll.find_by_id(self.poll_id.to_i)
  end
  
  def vote
    portlet = Portlet.find(params[:id])
    
    if poll = Poll.find_by_id(self.poll_id.to_i) 
      poll.vote!(params[:option])
      self.success_url
    else
      url_for_failure
    end
  end
    
end
