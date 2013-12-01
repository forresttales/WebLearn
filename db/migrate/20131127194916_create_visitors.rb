class CreateVisitors < ActiveRecord::Migration
  def change
    create_table :visitors do |t|
      t.integer :count

      t.timestamps
    end
  end
end
