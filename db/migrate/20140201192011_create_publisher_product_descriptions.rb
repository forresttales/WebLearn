class CreatePublisherProductDescriptions < ActiveRecord::Migration
  def change
    create_table :publisher_product_descriptions do |t|
      
      t.integer "publisher_product_id"
      t.integer "publisher_id"
      t.string "description", :limit => 1000
      t.decimal "price", :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
