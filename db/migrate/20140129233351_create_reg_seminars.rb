class CreateRegSeminars < ActiveRecord::Migration
  def change
    create_table :reg_seminars do |t|

      t.string "name_first", :limit => 50
      t.string "name_last", :limit => 50

      t.timestamps
    end
  end
end
