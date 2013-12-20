class Admin::MergeController < Admin::BaseController

  # Merge two articles. We need define @article before
  def merge

     debugger
     p.params.to_s



    @record = Article.find(params[:id])

    unless @record.access_by?(current_user)
      flash[:error] = _("Error, you are not allowed to perform this action")
      return(redirect_to :action => 'index')
    end
    
    #TODO return(render 'admin/shared/destroy') unless request.post?

    #TODO @record.merge(retain, destroy)


    flash[:notice] = _("This article was merged successfully")
    redirect_to :action => 'index'
  end

  
  
 
end
