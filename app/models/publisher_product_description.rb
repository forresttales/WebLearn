# == Schema Information
#
# Table name: publisher_product_descriptions
#
#  id                     :integer          not null, primary key
#  publisher_product_id   :integer
#  publisher_id           :integer
#  description            :string(1000)
#  price                  :decimal(8, 2)
#  created_at             :datetime
#  updated_at             :datetime
#  type_content           :string(50)
#  subject_category       :string(50)
#  word_description       :string(1000)
#  type_content_index     :integer
#  subject_category_index :integer
#

class PublisherProductDescription < ActiveRecord::Base
  
  attr_accessible :id,
                  :publisher_product_id,
                  :publisher_id,
                  :description,
                  :price,
                  :type_content_index,
                  :subject_category_index,                  
                  :type_content,
                  :subject_category,
                  :word_description,
                  :created_at,
                  :updated_at 
  
  
  belongs_to :publisher_product

  
end
