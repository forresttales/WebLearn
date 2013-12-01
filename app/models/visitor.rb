# == Schema Information
#
# Table name: visitors
#
#  id         :integer          not null, primary key
#  count      :integer
#  created_at :datetime
#  updated_at :datetime
#

class Visitor < ActiveRecord::Base
end
