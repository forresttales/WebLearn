class CreateLandings < ActiveRecord::Migration
  def change
    create_table :landings do |t|

      t.string "name_promo", :limit => 50
      t.integer "id_promo"

      t.timestamps
    end
  end
end
