# == Schema Information
#
# Table name: registers
#
#  id              :integer          not null, primary key
#  account_id      :integer
#  username        :string(50)
#  hashed_password :string(255)
#  salt            :string(255)
#  has_account     :boolean
#  account_type    :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class Register < ActiveRecord::Base
  
    attr_accessible :id, :account_id, :username, :has_account, :account_type
  
end
