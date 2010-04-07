class PollResultsPortlet < Portlet

  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
     
  def render
    @poll = Poll.find_by_id(params[:poll_id].to_i)
  end
    
end
