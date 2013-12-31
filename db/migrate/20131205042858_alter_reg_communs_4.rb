class AlterRegCommuns4 < ActiveRecord::Migration
  def change
    add_column :reg_communs, :employee_number, :string, :limit => 100    
    
  end
end
