# == Schema Information
#
# Table name: reg_events
#
#  id                            :integer          not null, primary key
#  name_first                    :string(100)
#  name_last                     :string(50)
#  name_title                    :string(50)
#  type_affiliation              :string(50)
#  name_affiliation              :string(100)
#  email                         :string(255)      default(""), not null
#  city_workshop                 :string(50)
#  created_at                    :datetime
#  updated_at                    :datetime
#  address                       :string(50)
#  city                          :string(50)
#  state                         :string(50)
#  zip                           :string(50)
#  phone                         :string(50)
#  email_cc_1                    :string(100)
#  email_cc_2                    :string(100)
#  city_workshop_1               :boolean          default(FALSE)
#  city_workshop_2               :boolean          default(FALSE)
#  city_workshop_3               :boolean          default(FALSE)
#  city_workshop_4               :boolean          default(FALSE)
#  city_workshop_5               :boolean          default(FALSE)
#  city_workshop_6               :boolean          default(FALSE)
#  city_workshop_7               :boolean          default(FALSE)
#  city_workshop_8               :boolean          default(FALSE)
#  city_workshop_9               :boolean          default(FALSE)
#  city_workshop_10              :boolean          default(FALSE)
#  city_workshop_11              :boolean          default(FALSE)
#  city_workshop_12              :boolean          default(FALSE)
#  city_workshop_13              :boolean          default(FALSE)
#  city_workshop_1_text          :string(100)
#  city_workshop_2_text          :string(100)
#  city_workshop_3_text          :string(100)
#  city_workshop_4_text          :string(100)
#  city_workshop_5_text          :string(100)
#  city_workshop_6_text          :string(100)
#  city_workshop_7_text          :string(100)
#  city_workshop_8_text          :string(100)
#  city_workshop_9_text          :string(100)
#  city_workshop_10_text         :string(100)
#  city_workshop_11_text         :string(100)
#  city_workshop_12_text         :string(100)
#  city_workshop_13_text         :string(100)
#  city_workshop_14              :boolean          default(FALSE)
#  city_workshop_14_text         :string(100)
#  city_workshop_15              :boolean          default(FALSE)
#  city_workshop_15_text         :string(100)
#  city_workshop_1_session       :integer
#  city_workshop_2_session       :integer
#  city_workshop_3_session       :integer
#  city_workshop_4_session       :integer
#  city_workshop_5_session       :integer
#  city_workshop_6_session       :integer
#  city_workshop_7_session       :integer
#  city_workshop_8_session       :integer
#  city_workshop_9_session       :integer
#  city_workshop_10_session      :integer
#  city_workshop_11_session      :integer
#  city_workshop_12_session      :integer
#  city_workshop_13_session      :integer
#  city_workshop_14_session      :integer
#  city_workshop_1_session_text  :string(50)
#  city_workshop_2_session_text  :string(50)
#  city_workshop_3_session_text  :string(50)
#  city_workshop_4_session_text  :string(50)
#  city_workshop_5_session_text  :string(50)
#  city_workshop_6_session_text  :string(50)
#  city_workshop_7_session_text  :string(50)
#  city_workshop_8_session_text  :string(50)
#  city_workshop_9_session_text  :string(50)
#  city_workshop_10_session_text :string(50)
#  city_workshop_11_session_text :string(50)
#  city_workshop_12_session_text :string(50)
#  city_workshop_13_session_text :string(50)
#  city_workshop_14_session_text :string(50)
#  phone_mobile                  :string(100)
#  name_title_sir                :string(100)
#  city_workshop_16              :boolean          default(FALSE)
#  city_workshop_16_text         :string(100)
#  city_workshop_17              :boolean          default(FALSE)
#  city_workshop_17_text         :string(100)
#  city_workshop_18              :boolean          default(FALSE)
#  city_workshop_18_text         :string(100)
#  city_workshop_19              :boolean          default(FALSE)
#  city_workshop_19_text         :string(100)
#  city_workshop_20              :boolean          default(FALSE)
#  city_workshop_20_text         :string(100)
#  city_workshop_21              :boolean          default(FALSE)
#  city_workshop_21_text         :string(100)
#  city_workshop_22              :boolean          default(FALSE)
#  city_workshop_22_text         :string(100)
#  city_workshop_23              :boolean          default(FALSE)
#  city_workshop_23_text         :string(100)
#  city_workshop_24              :boolean          default(FALSE)
#  city_workshop_24_text         :string(100)
#  city_workshop_25              :boolean          default(FALSE)
#  city_workshop_25_text         :string(100)
#

class RegEvent < ActiveRecord::Base
  
  attr_accessible :name_first, 
                  :name_last, 
                  :name_title_sir,
                  :name_title, 
                  :type_affiliation, 
                  :name_affiliation, 
                  :address, 
                  :city, 
                  :state, 
                  :zip, 
                  :phone, 
                  :phone_mobile,
                  :email, 
                  :email_cc_1, 
                  :email_cc_2, 
                  :city_workshop, 
                  :city_workshop_1,
                  :city_workshop_2,
                  :city_workshop_3,
                  :city_workshop_4,
                  :city_workshop_5,
                  :city_workshop_6,
                  :city_workshop_7,
                  :city_workshop_8,
                  :city_workshop_9,
                  :city_workshop_10,
                  :city_workshop_11,
                  :city_workshop_12,
                  :city_workshop_13,
                  :city_workshop_14,
                  :city_workshop_15,                                                      
                  :city_workshop_16,                                                      
                  :city_workshop_17,                                                      
                  :city_workshop_18,                                                      
                  :city_workshop_19,            
                  :city_workshop_20,
                  :city_workshop_21,
                  :city_workshop_22,              
                  :city_workshop_23,                                              
                  :city_workshop_1_text,
                  :city_workshop_2_text,
                  :city_workshop_3_text,
                  :city_workshop_4_text,
                  :city_workshop_5_text,
                  :city_workshop_6_text,
                  :city_workshop_7_text,
                  :city_workshop_8_text,
                  :city_workshop_9_text,
                  :city_workshop_10_text,
                  :city_workshop_11_text,
                  :city_workshop_12_text,
                  :city_workshop_13_text,
                  :city_workshop_14_text,
                  :city_workshop_15_text,       
                  :city_workshop_16_text,       
                  :city_workshop_17_text,       
                  :city_workshop_18_text,       
                  :city_workshop_19_text,
                  :city_workshop_20_text,
                  :city_workshop_21_text,
                  :city_workshop_22_text,
                  :city_workshop_23_text
                  # :city_workshop_1_session,
                  # :city_workshop_2_session,
                  # :city_workshop_3_session,
                  # :city_workshop_4_session,
                  # :city_workshop_5_session,
                  # :city_workshop_6_session,
                  # :city_workshop_7_session,
                  # :city_workshop_8_session,
                  # :city_workshop_9_session,
                  # :city_workshop_10_session,
                  # :city_workshop_11_session,
                  # :city_workshop_12_session,
                  # :city_workshop_13_session,
                  # :city_workshop_14_session,
                  # :city_workshop_1_session_text,
                  # :city_workshop_2_session_text,
                  # :city_workshop_3_session_text,
                  # :city_workshop_4_session_text,
                  # :city_workshop_5_session_text,
                  # :city_workshop_6_session_text,
                  # :city_workshop_7_session_text,
                  # :city_workshop_8_session_text,
                  # :city_workshop_9_session_text,
                  # :city_workshop_10_session_text,
                  # :city_workshop_11_session_text,
                  # :city_workshop_12_session_text,
                  # :city_workshop_13_session_text,
                  # :city_workshop_14_session_text,
                  # :created_at, 
                  # :updated_at
  
  
end







