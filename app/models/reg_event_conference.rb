# == Schema Information
#
# Table name: reg_event_conferences
#
#  id               :integer          not null, primary key
#  name_first       :string(255)      default(""), not null
#  name_last        :string(255)      default(""), not null
#  name_title       :string(255)      default(""), not null
#  position_title   :string(255)      default(""), not null
#  type_affiliation :string(255)      default(""), not null
#  name_affiliation :string(255)      default(""), not null
#  address          :string(255)      default(""), not null
#  city             :string(255)      default(""), not null
#  state            :string(255)      default(""), not null
#  zip              :string(255)      default(""), not null
#  phone            :string(255)      default(""), not null
#  phone_mobile     :string(255)      default(""), not null
#  email            :string(255)      default(""), not null
#  topic            :string(255)      default(""), not null
#  description      :text             default(""), not null
#  created_at       :datetime
#  updated_at       :datetime
#

class RegEventConference < ActiveRecord::Base
  
  
  attr_accessible :name_first, 
                  :name_last, 
                  :name_title,
                  :position_title, 
                  :type_affiliation, 
                  :name_affiliation, 
                  :address, 
                  :city, 
                  :state, 
                  :zip, 
                  :phone, 
                  :phone_mobile,
                  :email,
                  :topic,
                  :description
                  
                    
end
