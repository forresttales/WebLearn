class AlterRegEvents10 < ActiveRecord::Migration
  def change
    add_column :reg_events, :phone_mobile, :string, :limit => 100    
  end
end
