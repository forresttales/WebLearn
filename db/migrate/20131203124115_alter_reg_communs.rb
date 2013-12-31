class AlterRegCommuns < ActiveRecord::Migration
  def change
    remove_column("reg_communs", "level")    
    add_column :reg_communs, :level_federal, :boolean, :default => "FALSE"    
    add_column :reg_communs, :level_state, :boolean, :default => "FALSE"    
    add_column :reg_communs, :level_regional_authority, :boolean, :default => "FALSE"    
    add_column :reg_communs, :level_district_campus, :boolean, :default => "FALSE"    
    add_column :reg_communs, :level_department_management, :boolean, :default => "FALSE"    
    add_column :reg_communs, :level_school_management, :boolean, :default => "FALSE"    
    add_column :reg_communs, :level_department_school_classroom, :boolean, :default => "FALSE"    
    
  end
end
