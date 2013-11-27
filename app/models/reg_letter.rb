# == Schema Information
#
# Table name: reg_letters
#
#  id               :integer          not null, primary key
#  email            :string(255)      default(""), not null
#  name_title       :string(50)
#  name_affiliation :string(100)
#  created_at       :datetime
#  updated_at       :datetime
#

class RegLetter < ActiveRecord::Base
  
  attr_accessible :id, :email, :name_title, :name_affiliation, :created_at, :updated_at
  
end
