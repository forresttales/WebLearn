# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  name_file  :string(50)
#  name_dir   :string(50)
#  slug       :string(200)
#

class Page < ActiveRecord::Base
  
  attr_accessible :id, :name_file, :name_dir, :slug
  
  extend FriendlyId
  friendly_id :name_file, use: [:slugged]

  
end
