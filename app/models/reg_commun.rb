# == Schema Information
#
# Table name: reg_communs
#
#  id                    :integer          not null, primary key
#  name_first            :string(50)
#  name_last             :string(50)
#  name_title            :string(50)
#  name_affiliation      :string(100)
#  public_private        :string(10)
#  address               :string(100)
#  city                  :string(50)
#  state                 :string(50)
#  zip                   :string(10)
#  phone                 :string(50)
#  email                 :string(255)      default(""), not null
#  level                 :string(50)
#  institution_size      :string(50)
#  characterize_decision :string(50)
#  characterize_area     :text
#  survey_preferences    :text
#  created_at            :datetime
#  updated_at            :datetime
#

class RegCommun < ActiveRecord::Base
  
  attr_accessible :id, :name_first, :name_last, :name_title, :name_affiliation, :public_private, 
                  :address, :city, :state, :zip, :phone, :email, :level, :institution_size,
                  :characterize_decision, :characterize_area, :survey_preferences, :city_workshop, :created_at, :updated_at
  
end
