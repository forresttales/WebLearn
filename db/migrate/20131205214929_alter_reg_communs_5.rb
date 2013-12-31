class AlterRegCommuns5 < ActiveRecord::Migration
  def change
    
    add_column :reg_communs, :characterize_area_1, :string, :limit => 200    
    add_column :reg_communs, :characterize_area_2, :string, :limit => 200    
    add_column :reg_communs, :characterize_area_3, :string, :limit => 200    
    add_column :reg_communs, :characterize_area_4, :string, :limit => 200    
    add_column :reg_communs, :characterize_area_5, :string, :limit => 200    
    add_column :reg_communs, :characterize_area_6, :string, :limit => 200    
    add_column :reg_communs, :characterize_area_7, :string, :limit => 200    
    add_column :reg_communs, :characterize_area_8, :string, :limit => 200    
    add_column :reg_communs, :characterize_area_9, :string, :limit => 200    
    add_column :reg_communs, :characterize_area_10, :string, :limit => 200    

    add_column :reg_communs, :characterize_area_other, :string, :limit => 200    

    add_column :reg_communs, :survey_preferences_1, :string, :limit => 200    
    add_column :reg_communs, :survey_preferences_2, :string, :limit => 200    
    add_column :reg_communs, :survey_preferences_3, :string, :limit => 200    
    add_column :reg_communs, :survey_preferences_4, :string, :limit => 200    
    add_column :reg_communs, :survey_preferences_5, :string, :limit => 200    
    
  end
end


# 1 Mostly overall administration
# 2 Some overall administration
# 3 Mostly curriculum management
# 4 Some overall curriculum management
# 5 Mostly technical management (devices, networks, programming, storage, back-end system maintenance, telecom services, etc.)
# 6 Some technical management
# 7 Mostly instructional design
# 8 Some instructional design
# 9 Mostly procurement
# 10 Some procurement
# Other

# 1 Individual Amazon or iTunes gift cards
# 2 Institutional Amazon or iTunes gift cards
# 3 Institution named-charity
# 4 Accrue my give-away for the LC’s scholarship fund for poorer schools or districts to be able to travel and attend the Gathering annual event
# 5 Opt-out of any contests or give-aways
