class CreateRecruiters < ActiveRecord::Migration
  def change
    create_table :recruiters do |t|

      t.integer "user_id"
      t.string "phone", :limit => 50

      t.timestamps
    end
  end
end
