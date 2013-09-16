class CreateUserVendors < ActiveRecord::Migration
  def change
    create_table :user_vendors do |t|

      t.timestamps
    end
  end
end
