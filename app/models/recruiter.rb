# == Schema Information
#
# Table name: recruiters
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  phone      :string(50)
#  created_at :datetime
#  updated_at :datetime
#

class Recruiter < ActiveRecord::Base
  
    attr_accessible :id, :phone
  
    belongs_to :user
  
end
