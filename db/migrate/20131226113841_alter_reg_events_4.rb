class AlterRegEvents4 < ActiveRecord::Migration
  def change
    
    add_column :reg_events, :city_workshop_1, :boolean, :default => 'FALSE'    
    add_column :reg_events, :city_workshop_2, :boolean, :default => 'FALSE'    
    add_column :reg_events, :city_workshop_3, :boolean, :default => 'FALSE'    
    add_column :reg_events, :city_workshop_4, :boolean, :default => 'FALSE'    
    add_column :reg_events, :city_workshop_5, :boolean, :default => 'FALSE'    
    add_column :reg_events, :city_workshop_6, :boolean, :default => 'FALSE'    
    add_column :reg_events, :city_workshop_7, :boolean, :default => 'FALSE'    
    add_column :reg_events, :city_workshop_8, :boolean, :default => 'FALSE'    
    add_column :reg_events, :city_workshop_9, :boolean, :default => 'FALSE'    
    add_column :reg_events, :city_workshop_10, :boolean, :default => 'FALSE'    
    add_column :reg_events, :city_workshop_11, :boolean, :default => 'FALSE'    
    add_column :reg_events, :city_workshop_12, :boolean, :default => 'FALSE'    
    add_column :reg_events, :city_workshop_13, :boolean, :default => 'FALSE'    
    
    add_column :reg_events, :city_workshop_1_text, :string, :limit => 100    
    add_column :reg_events, :city_workshop_2_text, :string, :limit => 100    
    add_column :reg_events, :city_workshop_3_text, :string, :limit => 100    
    add_column :reg_events, :city_workshop_4_text, :string, :limit => 100    
    add_column :reg_events, :city_workshop_5_text, :string, :limit => 100    
    add_column :reg_events, :city_workshop_6_text, :string, :limit => 100    
    add_column :reg_events, :city_workshop_7_text, :string, :limit => 100    
    add_column :reg_events, :city_workshop_8_text, :string, :limit => 100    
    add_column :reg_events, :city_workshop_9_text, :string, :limit => 100    
    add_column :reg_events, :city_workshop_10_text, :string, :limit => 100    
    add_column :reg_events, :city_workshop_11_text, :string, :limit => 100    
    add_column :reg_events, :city_workshop_12_text, :string, :limit => 100    
    add_column :reg_events, :city_workshop_13_text, :string, :limit => 100    
    
  end
end
