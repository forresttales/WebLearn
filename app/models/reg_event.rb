# == Schema Information
#
# Table name: reg_events
#
#  id               :integer          not null, primary key
#  name_first       :string(50)
#  name_last        :string(50)
#  name_title       :string(50)
#  type_affiliation :string(50)
#  name_affiliation :string(100)
#  email            :string(255)      default(""), not null
#  city_workshop    :string(50)
#  created_at       :datetime
#  updated_at       :datetime
#  address          :string(50)
#  city             :string(50)
#  state            :string(50)
#  zip              :string(50)
#  phone            :string(50)
#

class RegEvent < ActiveRecord::Base
  
  attr_accessible :id, :name_first, :name_last, :name_title, :type_affiliation, :name_affiliation, 
                  :address1, :city1, :state1, :zip1, :phone1, :email, :city_workshop, :created_at, :updated_at
  
end
