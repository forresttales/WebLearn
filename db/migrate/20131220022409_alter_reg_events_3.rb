class AlterRegEvents3 < ActiveRecord::Migration
  def change
    
    add_column :reg_events, :email_cc_1, :string, :limit => 100    
    add_column :reg_events, :email_cc_2, :string, :limit => 100    
    
  end
end
