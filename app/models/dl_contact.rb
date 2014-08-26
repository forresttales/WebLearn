# == Schema Information
#
# Table name: dl_contacts
#
#  id             :integer          not null, primary key
#  name_first     :string(255)      default(""), not null
#  name_last      :string(255)      default(""), not null
#  name_title     :string(255)      default(""), not null
#  position_title :string(255)      default(""), not null
#  email          :string(255)      default(""), not null
#  phone          :string(255)      default(""), not null
#  name_pdf       :string(255)      default(""), not null
#  int_pdf        :integer          default(0)
#  created_at     :datetime
#  updated_at     :datetime
#

class DlContact < ActiveRecord::Base

  attr_accessible :name_first,
                  :name_last,
                  :name_title,
                  :position_title,
                  :email,
                  :phone,
                  :name_pdf,
                  :int_pdf


end
