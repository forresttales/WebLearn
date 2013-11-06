# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  created_at      :datetime
#  updated_at      :datetime
#  account_id      :integer
#  email           :string(50)       default("")
#  username        :string(50)
#  has_account     :boolean
#  account_type    :string(50)
#  password_digest :string(255)
#  remember_token  :string(255)
#  admin           :boolean          default(FALSE)
#  name_first      :string(50)
#  name_last       :string(50)
#

class AdminUser < User
  
    #attr_accessible :id, :name_first, :name_last, :created_at
  
  
end
