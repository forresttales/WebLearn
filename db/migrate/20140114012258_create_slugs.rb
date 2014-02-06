class CreateSlugs < ActiveRecord::Migration
  def change
    create_table :slugs do |t|
      t.string "slug", :limit => 200
      t.string "target_type", :limit => 25
      t.integer "target_id"

      t.timestamps
    end
  end
end
