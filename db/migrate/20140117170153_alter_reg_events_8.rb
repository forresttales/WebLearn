class AlterRegEvents8 < ActiveRecord::Migration
  def change
    
    add_column :reg_events, :city_workshop_session_1_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_session_2_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_session_3_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_session_4_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_session_5_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_session_6_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_session_7_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_session_8_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_session_9_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_session_10_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_session_11_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_session_12_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_session_13_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_session_14_text, :string, :limit => 50    

    remove_column("reg_events", "city_workshop_session_descr_1")
    remove_column("reg_events", "city_workshop_session_descr_2")
    remove_column("reg_events", "city_workshop_session_descr_3")
    
  end
end
