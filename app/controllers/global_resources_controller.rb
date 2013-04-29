class GlobalResourcesController < GlobalController
  
  include SnippetSupport
  helper GlobalResourcesHelper

  layout nil

  def show
    render template_for(params[:snippet], params[:secure], params[:noscript], params[:cs], params[:scope] || "legacy"),  :locals => { :user_nav => user_nav?(params) }
  end

  def index
    render '/global/index', :layout=> 'core',  :locals => { :user_nav => user_nav?(params) }
  end
  
  def legacy
    render '/global/legacy', :layout=> 'core',  :locals => { :user_nav => true }
  end

end
