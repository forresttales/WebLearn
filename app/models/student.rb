# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  phone      :string(50)
#  user_id    :integer
#

class Student < ActiveRecord::Base
  
    attr_accessible :id, :phone
  
    belongs_to :user
end
