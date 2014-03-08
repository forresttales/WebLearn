class TestOptoutsController < ApplicationController
  
  layout 'test_optout'
  
  # def index
      # redirect_to '/index'
  # end

  def edit
    
      # sql = "SELECT * FROM mtab1lets WHERE col_18='forresttales@hotmail.com'"
      @test_optout = Mtab1let.where(col_18: 'forresttales@hotmail.com')
      @test_optout = create_object(TestOptout, sql)
  end

  def update

      # @id = test_optout_params.id
      # @test_optout = TestOptout.find(params[:id])
      @test_optout = Mtab1let.find(params[:id])

      # @test_optout = TestOptout.new(test_optout_params)

      # render text: params[:id].to_s
      
      # render text: test_optout_params.to_s
      # mail = TestOptoutMailer.welcome_email(@test_optout)
      # mail.deliver
        
  end

  
  private

    def test_optout_params
      params.require(:test_optout).permit(
                                          :col_id,
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
                                          :col_26,
                                          :col_27,
                                          :col_28,
                                          :col_29,
                                          :col_30,
                                          :col_31,
                                          :col_32,
                                          :col_33,
                                          :col_34,
                                          :col_35,
                                          :col_36,
                                          :col_37,
                                          :col_38,
                                          :col_39,
                                          :col_40,
                                          :col_41,
                                          :col_42,
                                          :col_43,
                                          :col_44,
                                          :col_45,
                                          :col_46,
                                          :col_47,
                                          :col_48,
                                          :col_49,
                                          :col_50,                                           
                                          :created_at,
                                          :updated_at  
                                         )
                                         
    end
    
    
    def create_object(object_model, sql)
      
        object_name = object_model.create(
                                          :col_id => nil, 
                                          :col_1 => "",
                                          :col_2 => "",
                                          :col_3 => "",
                                          :col_4 => "",
                                          :col_5 => "",
                                          :col_6 => "",
                                          :col_7 => "",
                                          :col_8 => "",
                                          :col_9 => "",
                                          :col_10 => "",
                                          :col_11 => "",
                                          :col_12 => "",
                                          :col_13 => "",
                                          :col_14 => "",
                                          :col_15 => "",
                                          :col_17 => "",
                                          :col_17 => "",
                                          :col_18 => "",
                                          :col_19 => "",
                                          :col_20 => "",
                                          :col_21 => "",
                                          :col_22 => "",
                                          :col_23 => "",
                                          :col_24 => "",
                                          :col_25 => "",                              
                                          :col_26 => "",
                                          :col_27 => "",
                                          :col_28 => "",
                                          :col_29 => "",
                                          :col_30 => "",
                                          :col_31 => "",
                                          :col_32 => "",
                                          :col_33 => "",
                                          :col_34 => "",
                                          :col_35 => "",
                                          :col_36 => "",
                                          :col_37 => "",
                                          :col_38 => "",
                                          :col_39 => "",
                                          :col_40 => "",
                                          :col_41 => "",
                                          :col_42 => "",
                                          :col_43 => "",
                                          :col_44 => "",
                                          :col_45 => "",
                                          :col_46 => "",
                                          :col_47 => "",
                                          :col_48 => "",
                                          :col_49 => "",
                                          :col_50 => ""
                                         )

        ActiveRecord::Base.establish_connection
        results = ActiveRecord::Base.connection.execute(sql)
      
        results.each do |row|
            object_name.col_id = row['id']
            object_name.col_1 = row['col_1']
            object_name.col_2 = row['col_2']
            object_name.col_3 = row['col_3']
            object_name.col_4 = row['col_4']
            object_name.col_5 = row['col_5']
            object_name.col_6 = row['col_6']
            object_name.col_7 = row['col_7']
            object_name.col_8 = row['col_8']
            object_name.col_9 = row['col_9']
            object_name.col_10 = row['col_10']
            object_name.col_11 = row['col_11']
            object_name.col_12 = row['col_12']
            object_name.col_13 = row['col_13']
            object_name.col_14 = row['col_14']
            object_name.col_15 = row['col_15']
            object_name.col_16 = row['col_16']
            object_name.col_17 = row['col_17']
            object_name.col_18 = row['col_18']
            object_name.col_19 = row['col_19']
            object_name.col_20 = row['col_20']
            object_name.col_21 = row['col_21']
            object_name.col_22 = row['col_22']
            object_name.col_23 = row['col_23']
            object_name.col_24 = row['col_24']
            object_name.col_25 = row['col_25']
            object_name.col_26 = row['col_26']
            object_name.col_27 = row['col_27']
            object_name.col_28 = row['col_28']
            object_name.col_29 = row['col_29']
            object_name.col_30 = row['col_30']
            object_name.col_31 = row['col_31']
            object_name.col_32 = row['col_32']
            object_name.col_33 = row['col_33']
            object_name.col_34 = row['col_34']
            object_name.col_35 = row['col_35']
            object_name.col_36 = row['col_36']
            object_name.col_37 = row['col_37']
            object_name.col_38 = row['col_38']
            object_name.col_39 = row['col_39']
            object_name.col_40 = row['col_40']
            object_name.col_41 = row['col_41']
            object_name.col_42 = row['col_42']
            object_name.col_43 = row['col_43']
            object_name.col_44 = row['col_44']
            object_name.col_45 = row['col_45']
            object_name.col_46 = row['col_46']
            object_name.col_47 = row['col_47']
            object_name.col_48 = row['col_48']
            object_name.col_49 = row['col_49']
            object_name.col_50 = row['col_50']
            object_name.save
        end    
      
        return object_name
    end
    

  
end
