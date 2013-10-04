# == Schema Information
#
# Table name: admin_users
#
#  id              :integer          not null, primary key
#  first_name      :string(25)
#  last_name       :string(50)
#  email           :string(100)      default(""), not null
#  hashed_password :string(40)
#  created_at      :datetime
#  updated_at      :datetime
#  username        :string(25)
#  salt            :string(40)
#

class AdminUser < User
  
    #attr_accessible :id, :name_first, :name_last, :created_at
  
  
end
