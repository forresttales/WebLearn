# == Schema Information
#
# Table name: image_institutes
#
#  id           :integer          not null, primary key
#  institute_id :integer
#  image_name   :string(100)
#  primary      :boolean          default(FALSE)
#  created_at   :datetime
#  updated_at   :datetime
#

class ImageInstitute < ActiveRecord::Base
  
  attr_accessible :id,
                  :institute_id,
                  :image_name,
                  :primary,
                  :created_at,
                  :updated_at 
  
  
  belongs_to :institute

  
end
