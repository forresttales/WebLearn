class AlterRegEvents9 < ActiveRecord::Migration
  def change

    remove_column("reg_events", "city_workshop_session_1_text")
    remove_column("reg_events", "city_workshop_session_2_text")
    remove_column("reg_events", "city_workshop_session_3_text")
    remove_column("reg_events", "city_workshop_session_4_text")
    remove_column("reg_events", "city_workshop_session_5_text")
    remove_column("reg_events", "city_workshop_session_6_text")
    remove_column("reg_events", "city_workshop_session_7_text")
    remove_column("reg_events", "city_workshop_session_8_text")
    remove_column("reg_events", "city_workshop_session_9_text")
    remove_column("reg_events", "city_workshop_session_10_text")
    remove_column("reg_events", "city_workshop_session_11_text")
    remove_column("reg_events", "city_workshop_session_12_text")
    remove_column("reg_events", "city_workshop_session_13_text")
    remove_column("reg_events", "city_workshop_session_14_text")

    add_column :reg_events, :city_workshop_1_session_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_2_session_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_3_session_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_4_session_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_5_session_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_6_session_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_7_session_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_8_session_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_9_session_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_10_session_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_11_session_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_12_session_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_13_session_text, :string, :limit => 50    
    add_column :reg_events, :city_workshop_14_session_text, :string, :limit => 50    
    
  end
end
