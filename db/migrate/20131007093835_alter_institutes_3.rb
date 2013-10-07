class AlterInstitutes3 < ActiveRecord::Migration
  def change
    add_column("institutes", "user_id", :integer)    
    
  end
end
