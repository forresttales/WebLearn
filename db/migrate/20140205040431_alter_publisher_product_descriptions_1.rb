class AlterPublisherProductDescriptions1 < ActiveRecord::Migration
  def change

    add_index("publisher_product_descriptions", "publisher_id")
    add_index("publisher_product_descriptions", "publisher_product_id")

  end
  
end
