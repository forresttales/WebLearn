class AlterRegSeminars < ActiveRecord::Migration
  def change
    
    remove_column("reg_seminars", "reg_seminar_1")
    remove_column("reg_seminars", "reg_seminar_1_text")

    add_column :reg_seminars, :seminar_1, :boolean, :default => 'FALSE'    
    add_column :reg_seminars, :seminar_1_text, :string, :limit => 100
    
  end
end
