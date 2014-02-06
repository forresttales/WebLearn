class AlterRegEvents6 < ActiveRecord::Migration
  def change
    add_column :reg_events, :city_workshop_15, :boolean, :default => 'FALSE'    
    add_column :reg_events, :city_workshop_15_text, :string, :limit => 100    
    
  end
end
