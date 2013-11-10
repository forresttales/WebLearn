# == Schema Information
#
# Table name: archives
#
#  id           :integer          not null, primary key
#  article_id   :integer
#  type         :string(100)
#  name_url     :string(100)
#  name_file    :string(50)
#  name_author  :string(50)
#  name_admin   :string(50)
#  key_words    :text
#  date_article :date
#  created_at   :datetime
#  updated_at   :datetime
#

class Archive < ActiveRecord::Base
  
  attr_accessible :id, :article_id, :type, :name_url, :name_file, :name_author, :name_admin, :key_words, :date_article, :created_at, :updated_at
    
end
