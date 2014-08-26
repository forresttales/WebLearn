# == Schema Information
#
# Table name: archives
#
#  id           :integer          not null, primary key
#  article_id   :integer
#  name_url     :string(255)
#  name_file    :string(255)
#  name_author  :string(255)
#  name_admin   :string(255)
#  key_words    :text
#  date_article :date
#  created_at   :datetime
#  updated_at   :datetime
#  article_type :string(255)
#  description  :string(255)
#  linkimg      :string(255)
#  linkimg_url  :string(255)
#  linktitle    :string(255)
#  slug         :string(255)
#

class Archive < ActiveRecord::Base
  
  attr_accessible :id, :article_id, :type, :name_url, :name_file, :name_author, :name_admin, :key_words, :date_article, :created_at, :updated_at, :description,
                  :linkimg, :linkimg_url, :linktitle
    
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
