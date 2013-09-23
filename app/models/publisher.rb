# == Schema Information
#
# Table name: publishers
#
#  id                         :integer          not null, primary key
#  name                       :string(100)
#  address                    :string(100)
#  city                       :string(100)
#  state                      :string(50)
#  country                    :string(100)
#  zip                        :integer
#  phone                      :string(100)
#  url                        :string(100)
#  description                :text
#  company_contact_name_first :string(100)
#  company_contact_name_last  :string(100)
#  company_contact_phone      :string(100)
#  company_contact_email      :string(100)
#  created_at                 :datetime
#  updated_at                 :datetime
#  username                   :string(50)
#  hashed_password            :string(255)
#  salt                       :string(100)
#

class Publisher < ActiveRecord::Base
end
