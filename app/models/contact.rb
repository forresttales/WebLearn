# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  name       :string(50)
#  email      :string(255)      default(""), not null
#  subject    :string(50)
#  message    :text
#  created_at :datetime
#  updated_at :datetime
#

class Contact < ActiveRecord::Base
  
    attr_accessible :id, :name, :email, :subject, :message
    
    #attr_accessor :name, :email, :subject, :message

end
