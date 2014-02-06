class CreatePublisherProducts < ActiveRecord::Migration
  def change
    create_table :publisher_products do |t|

      t.integer "publisher_id"
      t.string "name_product", :limit => 100

      t.timestamps
    end
    
    add_index("publisher_products", "publisher_id")
    
  end
end
