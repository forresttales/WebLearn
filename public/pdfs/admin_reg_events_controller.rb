class AdminRegEventsController < ApplicationController
  
  layout 'admin_users'
  
  #before_filter :confirm_logged_in  
  
  helper_method :sort_column, :sort_direction
  
  
  @@admin_reg_events = nil
  @@delete = false
  @@s = ''
  
  def index

    s = 's'
    search_by = ''
    search = ''
    workshop = ''    
    search_by_text = ''

    if params[:search_by].nil?
      @admin_reg_events = RegEvent.order(sort_column + " " + sort_direction).paginate(:per_page => 50, :page => params[:page])
    else
      search_by = params[:search_by].to_s
      search = params[:search].to_s
      workshop = params[:workshop].to_s
      
      case search_by
      when "1"
        search_by_text = 'id'
      when "2"
        search_by_text = 'name_first'
      when "3"
        search_by_text = 'name_last'
      when "4"
        search_by_text = 'type_affiliation'
      when "5"
        search_by_text = 'name_affiliation'
      else
        #
      end
      
  
      if (workshop == '16' and search.length == 0)
        @admin_reg_events = RegEvent.order(sort_column + " " + sort_direction).paginate(:per_page => 50, :page => params[:page])
      else
            if (workshop == '16' and search.length > 0)
      
                if search_by_text == 'id'
                  s = "id=" + search
                else
                  s = search_by_text + " LIKE '" + search + "'"
                end
      
            elsif (workshop != '16' and search.length == 0)
                s = "city_workshop_" + workshop + "=true"
            elsif (workshop != '16' and search.length > 0)
                s = search_by_text + " LIKE '" + search + "' AND city_workshop_" + workshop + "=true"
            else
                #
            end
      
            @admin_reg_events = RegEvent.search_by_sql(s).order(sort_column + " " + sort_direction).paginate(:per_page => 50, :page => params[:page])
      end
      
    end
    
    @@admin_reg_events = @admin_reg_events


  end
  
  
#  def dbdelete
#      RegEvent.dbdelete
#      redirect_to action: "index"
#      # render text: 'dbdelete'
#  end
  
#  def dbclear
#      RegEvent.dbclear
#      redirect_to action: "index"
#      # render text: 'dbclear'
#  end
  
  def export
    
    # render text: 'export'
    
    # @stores = Store.where(params[:export])

    @admin_reg_events = @@admin_reg_events
 
  
    respond_to do |format|
      format.html
      format.csv
       #format.js
    end
    
  end
  
  
  
  
  
  
  
  
  
  
  
  
  def list
    # gon.contacts = Contact.all
  end
  
  def new
  end
  
  def view
  end
    
  def show
    @admin_reg_event = RegEvent.find(params[:id])    
  end
  
  def create
  end
  
  def edit
    @admin_reg_event = RegEvent.find_by_id(params[:id])    
  end
  
  def update
    
    @admin_reg_event = RegEvent.find(params[:id])
    
    if @admin_reg_event.update_attributes(params[:admin_reg_event])
      # redirect_to(:action => 'show', :saved_id => @archive.id)
      
      redirect_to(:action => 'show', :saved_id => @admin_reg_event.id)
      
    else
      # @subject_count = Subject.count
      render text: 'update failed'
    end    
  end

  def delete
    # @contact = Contact.find(params[:id])
  end

  def destroy
    
#    admin_reg_event = RegEvent.find(params[:id])
#    if admin_reg_event.delete
#      redirect_to(admin_reg_events_index_path)
#    else
#      render text: 'delete failed'
#    end
    
  end
  
  # def confirm_logged_in
    # unless session[:user_id]
      # flash[:notice] = "Please log in."
      # redirect_to(login_path)
      # return false # halts the before_filter
    # else
      # #redirect_to(:controller => 'admin_users', :action => 'list')
      # return true
    # end
  # end
  
  # def get_message
    # respond_to do |format|
      # format.html
      # format.js      
    # end    
  # end

  
  private

    def admin_reg_event_params
      params.require(:admin_reg_event).permit(
                                              :name_first, 
                                              :name_last, 
                                              :name_title, 
                                              :type_affiliation, 
                                              :name_affiliation, 
                                              :address, 
                                              :city, 
                                              :state, 
                                              :zip, 
                                              :phone, 
                                              :email, 
                                              :email_cc_1, 
                                              :email_cc_2, 
                                              :city_workshop,
                                              :city_workshop_1,
                                              :city_workshop_2,
                                              :city_workshop_3,
                                              :city_workshop_4,
                                              :city_workshop_5,
                                              :city_workshop_6,
                                              :city_workshop_7,
                                              :city_workshop_8,
                                              :city_workshop_9,
                                              :city_workshop_10,
                                              :city_workshop_11,
                                              :city_workshop_12,
                                              :city_workshop_13,
                                              :city_workshop_14,
                                              :city_workshop_15,
                                              :city_workshop_1_text,
                                              :city_workshop_2_text,
                                              :city_workshop_3_text,
                                              :city_workshop_4_text,
                                              :city_workshop_5_text,
                                              :city_workshop_6_text,
                                              :city_workshop_7_text,
                                              :city_workshop_8_text,
                                              :city_workshop_9_text,
                                              :city_workshop_10_text,
                                              :city_workshop_11_text,
                                              :city_workshop_12_text,
                                              :city_workshop_13_text,
                                              :city_workshop_14_text,
                                              :city_workshop_15_text,
                                              :created_at, 
                                              :updated_at      
                                              )
          
    end
  
  
    def sort_column
      RegEvent.column_names.include?(params[:sort]) ? params[:sort] : "id"
    end
    
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
  
  
  
  
end

