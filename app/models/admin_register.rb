# == Schema Information
#
# Table name: registers
#
#  id              :integer          not null, primary key
#  account_id      :integer
#  username        :string(50)
#  has_account     :boolean
#  account_type    :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  admin           :boolean
#  remember_token  :string(255)
#  password_digest :string(255)
#

class AdminRegister < Register
  
end
