class AlterRegCommuns3 < ActiveRecord::Migration
  def change
    remove_column("reg_communs", "public_private")    

    add_column :reg_communs, :public_private, :string, :limit => 50        

    add_column :reg_communs, :level_federal_text, :string, :limit => 100    
    add_column :reg_communs, :level_state_text, :string, :limit => 100    
    add_column :reg_communs, :level_regional_authority_text, :string, :limit => 100    
    add_column :reg_communs, :level_district_campus_text, :string, :limit => 100    
    add_column :reg_communs, :level_department_management_text, :string, :limit => 100    
    add_column :reg_communs, :level_school_management_text, :string, :limit => 100    
    add_column :reg_communs, :level_department_school_classroom_text, :string, :limit => 100    
  end
end


    # remove_column("reg_communs", "level_federal")    
    # remove_column("reg_communs", "level_state")    
    # remove_column("reg_communs", "level_regional_authority")    
    # remove_column("reg_communs", "level_district_campus")    
    # remove_column("reg_communs", "level_department_management")    
    # remove_column("reg_communs", "level_school_management")    
    # remove_column("reg_communs", "level_department_school_classroom")    
