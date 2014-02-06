class AlterRegEvents7 < ActiveRecord::Migration
  def change
    
    add_column :reg_events, :city_workshop_1_session, :integer
    add_column :reg_events, :city_workshop_2_session, :integer    
    add_column :reg_events, :city_workshop_3_session, :integer    
    add_column :reg_events, :city_workshop_4_session, :integer    
    add_column :reg_events, :city_workshop_5_session, :integer    
    add_column :reg_events, :city_workshop_6_session, :integer    
    add_column :reg_events, :city_workshop_7_session, :integer    
    add_column :reg_events, :city_workshop_8_session, :integer    
    add_column :reg_events, :city_workshop_9_session, :integer    
    add_column :reg_events, :city_workshop_10_session, :integer    
    add_column :reg_events, :city_workshop_11_session, :integer    
    add_column :reg_events, :city_workshop_12_session, :integer    
    add_column :reg_events, :city_workshop_13_session, :integer    
    add_column :reg_events, :city_workshop_14_session, :integer    

    add_column :reg_events, :city_workshop_session_descr_1, :string, :limit => 100    
    add_column :reg_events, :city_workshop_session_descr_2, :string, :limit => 100    
    add_column :reg_events, :city_workshop_session_descr_3, :string, :limit => 100    
    
  end
end
