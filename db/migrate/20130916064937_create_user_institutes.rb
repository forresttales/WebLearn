class CreateUserInstitutes < ActiveRecord::Migration
  def change
    create_table :user_institutes do |t|

      t.timestamps
    end
  end
end
