class CreateEdmatchups < ActiveRecord::Migration
  def change
    create_table :edmatchups do |t|
      t.text "description"

      t.timestamps
    end
  end
end
