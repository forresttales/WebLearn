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
#  address          :string(100)
#  city             :string(50)
#  state            :string(50)
#  zip              :string(10)
#  phone            :string(50)
#  email            :string(255)      default(""), not null
#  city_workshop    :string(50)
#  created_at       :datetime
#  updated_at       :datetime
#

class RegEvent < ActiveRecord::Base
end
