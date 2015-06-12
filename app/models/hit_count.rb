# == Schema Information
#
# Table name: hit_counts
#
#  id               :integer          not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  item_register_id :integer          default(0)
#  user_email       :string           default("")
#

class HitCount < ActiveRecord::Base
  
  attr_accessible :id,
                  :item_register_id,
                  :user_email 

  
end

