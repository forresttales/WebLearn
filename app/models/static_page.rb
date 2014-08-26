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

class StaticPage < Archive
    
end
