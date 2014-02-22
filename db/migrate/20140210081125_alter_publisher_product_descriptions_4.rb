class AlterPublisherProductDescriptions4 < ActiveRecord::Migration
  def change
    
    remove_column("publisher_product_descriptions", "word_description")
    
    add_column :publisher_product_descriptions, :name_product, :string, :limit => 100    
    add_column :publisher_product_descriptions, :core_supplemental, :string, :limit => 50
    add_column :publisher_product_descriptions, :source_url, :string, :limit => 300
    add_column :publisher_product_descriptions, :topic, :string, :limit => 200
    add_column :publisher_product_descriptions, :lesson_plan_subject, :string, :limit => 300
    add_column :publisher_product_descriptions, :word_description, :text
    add_column :publisher_product_descriptions, :age_appropriate, :string, :limit => 50
    add_column :publisher_product_descriptions, :age_appropriate_index, :integer 
    add_column :publisher_product_descriptions, :grade, :string, :limit => 50
    add_column :publisher_product_descriptions, :grade_index, :integer
    add_column :publisher_product_descriptions, :metadata, :text
    add_column :publisher_product_descriptions, :platform, :string, :limit => 50
    add_column :publisher_product_descriptions, :platform_index, :integer
    add_column :publisher_product_descriptions, :versions, :string, :limit => 300
    add_column :publisher_product_descriptions, :pricing_model, :string, :limit => 50
    add_column :publisher_product_descriptions, :pricing_model_index, :integer
    
  end
end

  # t.decimal "price", :precision => 8, :scale => 2

  # name_product      tf
  # core_supplemental   r
  # source_url        tf
  # topic         tf
  # lesson_plan_subject   tf
  # word_description    ta
  # age_appropriate     dd        
  # grade_index       dd  grade
  # metadata        upload
  # platform_index      dd platform string
  # versions        tf
