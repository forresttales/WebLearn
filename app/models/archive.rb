# == Schema Information
#
# Table name: archives
#
#  id                  :integer          not null, primary key
#  article_id          :integer
#  name_url            :string(255)      default("journal")
#  name_file           :string(255)
#  name_author         :string(255)
#  name_admin          :string(255)
#  key_words           :text
#  date_article        :date
#  created_at          :datetime
#  updated_at          :datetime
#  article_type        :string(255)
#  description         :string(255)
#  linkimg             :string(255)
#  linkimg_url         :string(255)
#  linktitle           :string(255)
#  slug                :string(255)
#  subtitle_1          :string(255)
#  subtitle_2          :string(255)
#  img_height          :integer          default(200)
#  linkimg_carousel    :string
#  img_height_carousel :integer          default(300)
#  subtitle_1_carousel :string
#  subtitle_2_carousel :string
#

class Archive < ActiveRecord::Base
  
  attr_accessible :id, 
                  :article_id, 
                  :name_url, 
                  :name_file, 
                  :name_author, 
                  :name_admin, 
                  :key_words, 
                  :date_article, 
                  :article_type, 
                  :description,
                  :linkimg, 
                  :img_height,
                  :subtitle_1,
                  :subtitle_2,
                  :linkimg_carousel,
                  :img_height_carousel,
                  :subtitle_1_carousel,
                  :subtitle_2_carousel,
                  :linkimg_url, 
                  :linktitle,
                  :slug                  

    
  extend FriendlyId
  friendly_id :name_file, use: [:slugged, :history]
      
        
  # extend FriendlyId
  # friendly_id :name_file, use: [:slugged, :history]    
    
  # def to_param
    # [id, name_file.parameterize].join("-")
  # end
      
  # def to_param
    # "#{id}-#{name_file}".parameterize
  # end
    
    
end
