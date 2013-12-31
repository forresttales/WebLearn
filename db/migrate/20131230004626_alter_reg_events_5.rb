class AlterRegEvents5 < ActiveRecord::Migration
  def change
    add_column :reg_events, :city_workshop_14, :boolean, :default => 'FALSE'    
    add_column :reg_events, :city_workshop_14_text, :string, :limit => 100    
  end
end
