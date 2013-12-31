# == Schema Information
#
# Table name: landings
#
#  id         :integer          not null, primary key
#  name_promo :string(50)
#  id_promo   :integer
#  created_at :datetime
#  updated_at :datetime
#  name       :string(100)
#  email      :string(100)
#  company    :string(100)
#

class Landing < ActiveRecord::Base
  
  attr_accessible   :id, :id_promo, :name_promo, :created_at, :updated_at, :name, :email, :company
  
end
