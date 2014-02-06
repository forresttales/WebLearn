class Tab4letsController < ApplicationController
  
  require 'csv'

  layout 'tab4let'
  
  helper_method :sort_column, :sort_direction
  
  
  @@tab4lets = nil
  @@delete = false
  @@s = ''
  
  def index
    
    # if params[:id_export] == '1'
#       
        # @tab4lets = Tab4let.where(:id => '70')
#           
        # respond_to do |format|
#           
          # # if format == format.csv
            # # @tab4lets = Tab4let.where(:id => '70')
          # # end
#           
          # format.html
          # # format.csv
          # format.js
        # end
    # end    
    
    # @tab4lets = null
    
    s = 's'
    search_by = ''
    search = ''
    search_by_text = ''
    
    
    if params[:search_by].nil? and params[:export].nil? and @@delete == false
      @tab4lets = Tab4let.order(sort_column + " " + sort_direction).paginate(:per_page => 200, :page => params[:page])
      @@tab4lets = @tab4lets
      
    elsif !params[:export].nil? and @@delete == false
      
      export = params[:export]
      @tab4lets = Tab4let.where(params[:export]).paginate(:per_page => 200, :page => params[:page])
      #@tab4lets = Tab4let.where(:id => export.id)
    elsif !params[:search_by].nil? and @@delete == false

      # @tab4lets = Tab4let.where(:id => '99')
      
      search_by = params[:search_by].to_s
      search = params[:search].to_s
      
      case search_by
      when "1"
        search_by_text = 'id'
      when "2"
        search_by_text = 'col_1'
      when "3"
        search_by_text = 'col_2'
      when "4"
        search_by_text = 'col_3'
      when "5"
        search_by_text = 'col_4'
      when "6"
        search_by_text = 'col_5'
      when "7"
        search_by_text = 'col_6'
      when "8"
        search_by_text = 'col_7'
      when "9"
        search_by_text = 'col_8'
      when "10"
        search_by_text = 'col_9'
      when "11"
        search_by_text = 'col_10'
      when "12"
        search_by_text = 'col_11'
      when "13"
        search_by_text = 'col_12'
      when "14"
        search_by_text = 'col_13'
      when "15"
        search_by_text = 'col_14'
      when "16"
        search_by_text = 'col_15'
      when "17"
        search_by_text = 'col_16'
      when "18"
        search_by_text = 'col_17'
      when "19"
        search_by_text = 'col_18'
      when "20"
        search_by_text = 'col_19'
      when "21"
        search_by_text = 'col_20'
      when "22"
        search_by_text = 'col_21'
      when "23"
        search_by_text = 'col_22'
      when "24"
        search_by_text = 'col_23'
      when "25"
        search_by_text = 'col_24'
      when "26"
        search_by_text = 'col_25'
      else
        #
      end
      
      if search_by_text == 'id'
        s = "id=" + search
      else
        s = search_by_text + " LIKE '" + search + "'"
      end
      
      @@s = s
      
      @tab4lets = Tab4let.search_by_sql(s).order(sort_column + " " + sort_direction).paginate(:per_page => 200, :page => params[:page])
      
    elsif @@delete == true
      
      if @@s != ''
        @tab4lets = Tab4let.search_by_sql(@@s).order(sort_column + " " + sort_direction).paginate(:per_page => 200, :page => params[:page])
      else
        @tab4lets = Tab4let.order(sort_column + " " + sort_direction).paginate(:per_page => 200, :page => params[:page])
      end
    else
      #
    end    
    
    @@delete = false
    
    @@tab4lets = @tab4lets

    respond_to do |format|
      format.html
      format.csv
      format.js
    end

        
  end

  def dbdelete
      Tab4let.dbdelete
      redirect_to action: "index"
      # render text: 'dbdelete'
  end
  
  def dbclear
      Tab4let.dbclear
      redirect_to action: "index"
      # render text: 'dbclear'
  end
  
  def export
    
    # render text: 'export'
    
    # @tab4lets = Tab4let.where(params[:export])

    @tab4lets = @@tab4lets
 
  
    respond_to do |format|
      format.html
      format.csv
       #format.js
    end
    
  end
  
  
  def new
    
  end

  def import
    
    file_name = params[:file_name]

    headers = [
      "col_1",
      "col_2",
      "col_3",
      "col_4",
      "col_5",
      "col_6",
      "col_7",
      "col_8",
      "col_9",
      "col_10",
      "col_11",
      "col_12",
      "col_13",
      "col_14",
      "col_15",
      "col_16",
      "col_17",
      "col_18",
      "col_19",
      "col_20",
      "col_21",
      "col_22",
      "col_23",
      "col_24",
      "col_25"
    ]
 
    ActiveRecord::Base.establish_connection
 
    # send_file "#{Rails.root}/public/downloads/test.htm"    

    file_dir = 'public/tab4let/' + file_name

    CSV.foreach(Rails.root.join(file_dir), {headers: :first_row}) do |row|

    # CSV.foreach(file_dir, {headers: :first_row}) do |row|
      
      sql_keys = []
      sql_vals = []
 
      created_at = Time.now.strftime("%Y-%m-%d %H:%M:%S")
 
      headers.each_with_index do |key, idx|
        val = row[idx]
 
        sql_keys << key
        sql_vals << ActiveRecord::Base.connection.quote(val)
      end
 
      sql = "
        INSERT INTO tab4lets (#{sql_keys.join(', ')}, created_at, updated_at)
        VALUES (#{sql_vals.join(', ')}, '#{created_at}', '#{created_at}')
      "
 
      res = ActiveRecord::Base.connection.execute(sql)
    end
    
    redirect_to action: "index"
    
    
  end

  def upload

    # @tab4lets = Tab4let.order(:id)
    # respond_to do |format|
      # format.html
      # format.csv { send_data @tab4lets.to_csv }
      # format.xls # { send_data @products.to_csv(col_sep: "\t") }
    # end

    # name_first                  First Name  
    # name_last                   Last Name  
    # name_title                  Title
    # institute                   INSTITUTE
    # department                  Department 
    # address_1                   Mailing Address Line 1 
    # address_2                   Mailing Address Line 2 
    # city                        Mailing City 
    # state_providence            Mailing State/Provence
    # zip                         Mailing Zip/Postal Code
    # country                     Mailing Country
    # phone                       Main Phone
    # fax                         Fax
    # phone_direct                Phone Direct 
    # phone_mobile                Mobile Phone  
    # email_website               Email Website

    
    # render text: a_tab4let[0]
    

    # table_name = params[:table_name]

    # render text: table_name
    
    # nextval('landins_id_seq'::regclass)

    # sql = "CREATE TABLE " + table_name + " (id int, col1 character varying(100), PRIMARY KEY(id))"

    # CREATE TABLE archives (
        # id integer NOT NULL,
        # article_id integer,
        # name_url character varying(100),
        # key_words text,
        # date_article date,
        # created_at timestamp without time zone,
        # updated_at timestamp without time zone,
    # );

    # sql = "CREATE TABLE " + table_name + " (id SERIAL PRIMARY KEY, col1 character varying(100), created_at timestamp without time zone, updated_at timestamp without time zone)"
    # ActiveRecord::Base.connection.execute(sql)    
    
    
    # MyModel.table_name = "my_table"
    # records = MyModel.all    

    # a_tab4let = Array.new
    
    # INSERT INTO table_name (column1,column2,column3,...) VALUES (value1,value2,value3,...);    
     
    # sql_insert = "INSERT INTO " + table_name + "(col1) VALUES (" + line + ")"
     
    # File.open("#{Rails.root}/public/downloads/test.txt", "r").each_line do |line|
# 
      # # sql_insert = "INSERT INTO " + table_name + " (col1) VALUES (" + line + ")"
# 
      # sql_insert = "INSERT INTO " + table_name + " (col1) VALUES ('cool test')"
# 
      # ActiveRecord::Base.connection.execute(sql_insert)    
      
      #a_tab4let.push(line)

    # end
    
    
    


    # uploaded_io = params[:upload_file]
# 
    # File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
      # file.write(uploaded_io.read)
    # end
# 
    # upload = Upload.new
    # upload.name_file = uploaded_io.original_filename
    # upload.name_originator = session[:username]
# 
    # if upload.save
        # session[:upload_status] = true
    # else
        # session[:upload_status] = false
    # end    
    
    # render 'create'
    
    
  end

  def show
    @tab4let = Tab4let.find(params[:id])    
  end
  
  def create
  end
  
  def edit
    @tab4let = Tab4let.find_by_id(params[:id])    
  end
  
  def update
    
    @tab4let = Tab4let.find(params[:id])
    
    if @tab4let.update_attributes(params[:tab4let])
      # redirect_to(:action => 'show', :saved_id => @archive.id)
      
      redirect_to(:action => 'show', :saved_id => @tab4let.id)
      
    else
      # @subject_count = Subject.count
      render text: 'update failed'
    end    
  end

  def delete
    # @contact = Contact.find(params[:id])
  end

  def destroy
     
    tab4let = Tab4let.find(params[:id])
    if tab4let.delete
      @@delete = true
      redirect_to(tab4lets_index_path)
    else
      render text: 'delete failed'
    end
     
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

    def tab4lets_params
      params.require(:tab4let).permit(
                                    :col_1,
                                    :col_2,
                                    :col_3,
                                    :col_4,
                                    :col_5,
                                    :col_6,
                                    :col_7,
                                    :col_8,
                                    :col_9,
                                    :col_10,
                                    :col_11,
                                    :col_12,
                                    :col_13,
                                    :col_14,
                                    :col_15,
                                    :col_16,
                                    :col_17,
                                    :col_18,
                                    :col_19,
                                    :col_20,                  
                                    :col_21,                  
                                    :col_22,                  
                                    :col_23,                  
                                    :col_24,                  
                                    :col_25,                  
                                    :created_at,
                                    :updated_at  
                                    )
          
    end
  
  
    def sort_column
      Tab4let.column_names.include?(params[:sort]) ? params[:sort] : "id"
    end
    
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end

  
end
