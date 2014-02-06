class InstituteQueryResultsController < ApplicationController

  layout 'institute'
  
  @@institute_query_id = nil
  
  def index

    @@institute_query_id = params[:id]

    # @@institute_query_id = 1
    
    # session[:institute_query_id] = params[:id]
    
    @institute_query_results = InstituteQueryResult.where("institute_query_id = ?", @@institute_query_id)
    
    # if !@institute_query_results.any?
      # @result = @institute_query_results[0].result
      # # @result = 'not any'
    # else
      # @result = 'was nil'
    # end
    
    institute_query = InstituteQuery.find(@@institute_query_id)
    @institute_query_name = institute_query.name_query
    @institute_query_has_query = institute_query.has_result
    @institute_query_id = @@institute_query_id
    
  end
  
  
  def show
    
    # @institute_query_desciptions = InstituteQueryResult.find(params[:id])
    @institute_query_results = InstituteQueryResult.where("id = ?", params[:id])
    
  end
  
  
  def new
    
    if !(session[:username].nil? or session[:institute_id].nil?)
      # @username = session[:username]
      @institute_query_result = InstituteQueryResult.new
    else
      render text: 'failed sessions'
    end
    
  end

  
  def create
    institute_query_result = InstituteQueryResult.new(institute_query_result_params)
    institute_query = InstituteQuery.find( @@institute_query_id )
    institute_query_result.institute_query_id = @@institute_query_id    
    institute_query_result.institute_id = session[:institute_id]

    if institute_query.update_columns( :has_result => true)      
      if institute_query_result.save
        
        # session[:has_account] = true
        
        # redirect_to(:action => 'index', :params => {:id => @@institute_query_id})
        redirect_to '/InstituteQueryResult?id=' + @@institute_query_id.to_s

      else
        render text: 'Save Institute Query Result failed'
        #render("new")
      end
    else
      render text: 'Update institute_query_id failed'
    end
    
  end


  def edit
    @institute_query_result = InstituteQueryResult.find_by_id(params[:id])    
  end
  
  def update
    
    @institute_query_result = InstituteQueryResult.find(params[:id])
    
    if @institute_query_result.update_attributes(params[:institute_query_result])
      # redirect_to(:action => 'show', :saved_id => @archive.id)
      
        # redirect_to(:action => 'show', :saved_id => @admin_reg_event.id)
        redirect_to '/InstituteQueryResult?id=' + @@institute_query_id.to_s
      
    else
      # @subject_count = Subject.count
      render text: 'update failed'
    end    
  end
  
  
  
  
  private

    def institute_query_result_params
      params.require(:institute_query_result).permit(      
                                                      :institute_id,
                                                      :institute_query_id, 
                                                      :name_result
                                                    )

    end
    
    
    
    


end
