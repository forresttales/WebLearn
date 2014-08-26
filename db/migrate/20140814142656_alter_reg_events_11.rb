class AlterRegEvents11 < ActiveRecord::Migration
  def change
    add_column :reg_events, :name_title_sir, :string, :limit => 100    
    
  end
end
