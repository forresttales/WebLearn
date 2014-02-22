# == Schema Information
#
# Table name: reg_event_itins
#
#  id              :integer          not null, primary key
#  city_state      :string(50)
#  date_event      :date
#  address         :text
#  created_at      :datetime
#  updated_at      :datetime
#  date_event_text :string(50)
#  order_display   :integer          default(0)
#

class RegEventItin < ActiveRecord::Base
  
  attr_accessible :id, 
                  :city_state,
                  :date_event, 
                  :date_event_text,
                  :address, 
                  :order_display,
                  :created_at, 
                  :updated_at


  
end
