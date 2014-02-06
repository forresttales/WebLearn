class AlterCommuns7 < ActiveRecord::Migration
  def change
    add_column :reg_communs, :institution_size_text, :string, :limit => 100    
    add_column :reg_communs, :employee_number_text, :string, :limit => 100    
    add_column :reg_communs, :characterize_decision_text, :string, :limit => 100    
    
  end
end
