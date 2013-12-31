class AlterRegCommuns6 < ActiveRecord::Migration
  def change
    
    remove_column("reg_communs", "level_federal")    
    remove_column("reg_communs", "level_state")    
    remove_column("reg_communs", "level_regional_authority")    
    remove_column("reg_communs", "level_district_campus")    
    remove_column("reg_communs", "level_department_management")    
    remove_column("reg_communs", "level_school_management")    
    remove_column("reg_communs", "level_department_school_classroom")    

    remove_column("reg_communs", "level_federal_text")    
    remove_column("reg_communs", "level_state_text")    
    remove_column("reg_communs", "level_regional_authority_text")    
    remove_column("reg_communs", "level_district_campus_text")    
    remove_column("reg_communs", "level_department_management_text")    
    remove_column("reg_communs", "level_school_management_text")    
    remove_column("reg_communs", "level_department_school_classroom_text")    
    
    add_column :reg_communs, :level_1, :boolean, :default => 'FALSE'    
    add_column :reg_communs, :level_2, :boolean, :default => 'FALSE'    
    add_column :reg_communs, :level_3, :boolean, :default => 'FALSE'    
    add_column :reg_communs, :level_4, :boolean, :default => 'FALSE'    
    add_column :reg_communs, :level_5, :boolean, :default => 'FALSE'    
    add_column :reg_communs, :level_6, :boolean, :default => 'FALSE'    
    add_column :reg_communs, :level_7, :boolean, :default => 'FALSE'    
    
    add_column :reg_communs, :level_1_text, :string, :limit => 200    
    add_column :reg_communs, :level_2_text, :string, :limit => 200    
    add_column :reg_communs, :level_3_text, :string, :limit => 200    
    add_column :reg_communs, :level_4_text, :string, :limit => 200    
    add_column :reg_communs, :level_5_text, :string, :limit => 200    
    add_column :reg_communs, :level_6_text, :string, :limit => 200    
    add_column :reg_communs, :level_7_text, :string, :limit => 200    

    
    remove_column("reg_communs", "characterize_area_1")    
    remove_column("reg_communs", "characterize_area_2")    
    remove_column("reg_communs", "characterize_area_3")    
    remove_column("reg_communs", "characterize_area_4")    
    remove_column("reg_communs", "characterize_area_5")    
    remove_column("reg_communs", "characterize_area_6")    
    remove_column("reg_communs", "characterize_area_7")    
    remove_column("reg_communs", "characterize_area_8")    
    remove_column("reg_communs", "characterize_area_9")    
    remove_column("reg_communs", "characterize_area_10")    
    
    remove_column("reg_communs", "survey_preferences_1")    
    remove_column("reg_communs", "survey_preferences_2")    
    remove_column("reg_communs", "survey_preferences_3")    
    remove_column("reg_communs", "survey_preferences_4")    
    remove_column("reg_communs", "survey_preferences_5")    

    add_column :reg_communs, :characterize_area_1, :boolean, :default => 'FALSE'    
    add_column :reg_communs, :characterize_area_2, :boolean, :default => 'FALSE'    
    add_column :reg_communs, :characterize_area_3, :boolean, :default => 'FALSE'    
    add_column :reg_communs, :characterize_area_4, :boolean, :default => 'FALSE'    
    add_column :reg_communs, :characterize_area_5, :boolean, :default => 'FALSE'    
    add_column :reg_communs, :characterize_area_6, :boolean, :default => 'FALSE'    
    add_column :reg_communs, :characterize_area_7, :boolean, :default => 'FALSE'    
    add_column :reg_communs, :characterize_area_8, :boolean, :default => 'FALSE'    
    add_column :reg_communs, :characterize_area_9, :boolean, :default => 'FALSE'    
    add_column :reg_communs, :characterize_area_10, :boolean, :default => 'FALSE'    

    add_column :reg_communs, :survey_preferences_1, :boolean, :default => 'FALSE'    
    add_column :reg_communs, :survey_preferences_2, :boolean, :default => 'FALSE'    
    add_column :reg_communs, :survey_preferences_3, :boolean, :default => 'FALSE'    
    add_column :reg_communs, :survey_preferences_4, :boolean, :default => 'FALSE'    
    add_column :reg_communs, :survey_preferences_5, :boolean, :default => 'FALSE'    
    
    add_column :reg_communs, :characterize_area_1_text, :string, :limit => 200    
    add_column :reg_communs, :characterize_area_2_text, :string, :limit => 200    
    add_column :reg_communs, :characterize_area_3_text, :string, :limit => 200    
    add_column :reg_communs, :characterize_area_4_text, :string, :limit => 200    
    add_column :reg_communs, :characterize_area_5_text, :string, :limit => 200    
    add_column :reg_communs, :characterize_area_6_text, :string, :limit => 200    
    add_column :reg_communs, :characterize_area_7_text, :string, :limit => 200    
    add_column :reg_communs, :characterize_area_8_text, :string, :limit => 200    
    add_column :reg_communs, :characterize_area_9_text, :string, :limit => 200    
    add_column :reg_communs, :characterize_area_10_text, :string, :limit => 200    
    
    add_column :reg_communs, :survey_preferences_1_text, :string, :limit => 200    
    add_column :reg_communs, :survey_preferences_2_text, :string, :limit => 200    
    add_column :reg_communs, :survey_preferences_3_text, :string, :limit => 200    
    add_column :reg_communs, :survey_preferences_4_text, :string, :limit => 200    
    add_column :reg_communs, :survey_preferences_5_text, :string, :limit => 200    
    
  end
end
