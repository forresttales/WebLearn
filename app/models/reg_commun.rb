# == Schema Information
#
# Table name: reg_communs
#
#  id                         :integer          not null, primary key
#  name_first                 :string(50)
#  name_last                  :string(50)
#  name_title                 :string(50)
#  name_affiliation           :string(100)
#  address                    :string(100)
#  city                       :string(50)
#  state                      :string(50)
#  zip                        :string(10)
#  phone                      :string(50)
#  email                      :string(255)      default(""), not null
#  institution_size           :string(50)
#  characterize_decision      :string(50)
#  characterize_area          :text
#  survey_preferences         :text
#  created_at                 :datetime
#  updated_at                 :datetime
#  level_other                :string(100)
#  public_private             :string(50)
#  employee_number            :string(100)
#  characterize_area_other    :string(200)
#  level_1                    :boolean          default(FALSE)
#  level_2                    :boolean          default(FALSE)
#  level_3                    :boolean          default(FALSE)
#  level_4                    :boolean          default(FALSE)
#  level_5                    :boolean          default(FALSE)
#  level_6                    :boolean          default(FALSE)
#  level_7                    :boolean          default(FALSE)
#  level_1_text               :string(200)
#  level_2_text               :string(200)
#  level_3_text               :string(200)
#  level_4_text               :string(200)
#  level_5_text               :string(200)
#  level_6_text               :string(200)
#  level_7_text               :string(200)
#  characterize_area_1        :boolean          default(FALSE)
#  characterize_area_2        :boolean          default(FALSE)
#  characterize_area_3        :boolean          default(FALSE)
#  characterize_area_4        :boolean          default(FALSE)
#  characterize_area_5        :boolean          default(FALSE)
#  characterize_area_6        :boolean          default(FALSE)
#  characterize_area_7        :boolean          default(FALSE)
#  characterize_area_8        :boolean          default(FALSE)
#  characterize_area_9        :boolean          default(FALSE)
#  characterize_area_10       :boolean          default(FALSE)
#  survey_preferences_1       :boolean          default(FALSE)
#  survey_preferences_2       :boolean          default(FALSE)
#  survey_preferences_3       :boolean          default(FALSE)
#  survey_preferences_4       :boolean          default(FALSE)
#  survey_preferences_5       :boolean          default(FALSE)
#  characterize_area_1_text   :string(200)
#  characterize_area_2_text   :string(200)
#  characterize_area_3_text   :string(200)
#  characterize_area_4_text   :string(200)
#  characterize_area_5_text   :string(200)
#  characterize_area_6_text   :string(200)
#  characterize_area_7_text   :string(200)
#  characterize_area_8_text   :string(200)
#  characterize_area_9_text   :string(200)
#  characterize_area_10_text  :string(200)
#  survey_preferences_1_text  :string(200)
#  survey_preferences_2_text  :string(200)
#  survey_preferences_3_text  :string(200)
#  survey_preferences_4_text  :string(200)
#  survey_preferences_5_text  :string(200)
#  institution_size_text      :string(100)
#  employee_number_text       :string(100)
#  characterize_decision_text :string(100)
#

class RegCommun < ActiveRecord::Base
  
  attr_accessible   :id,
                    :name_first, 
                    :name_last, 
                    :name_title, 
                    :name_affiliation, 
                    :public_private, 
                    :address, 
                    :city, 
                    :state, 
                    :zip, 
                    :phone, 
                    :email, 
                    :level_1, 
                    :level_2, 
                    :level_3,
                    :level_4,
                    :level_5,
                    :level_6,
                    :level_7,
                    :level_1_text,
                    :level_2_text,
                    :level_3_text,
                    :level_4_text,
                    :level_5_text,
                    :level_6_text,
                    :level_7_text,
                    :level_other,                                          
                    :institution_size,
                    :institution_size_text,
                    :employee_number,
                    :employee_number_text,
                    :characterize_decision, 
                    :characterize_decision_text,
                    :characterize_area_1,
                    :characterize_area_2,
                    :characterize_area_3,
                    :characterize_area_4,
                    :characterize_area_5,
                    :characterize_area_6,
                    :characterize_area_7,
                    :characterize_area_8,
                    :characterize_area_9,
                    :characterize_area_10,
                    :characterize_area_1_text,
                    :characterize_area_2_text,
                    :characterize_area_3_text,
                    :characterize_area_4_text,
                    :characterize_area_5_text,
                    :characterize_area_6_text,
                    :characterize_area_7_text,
                    :characterize_area_8_text,
                    :characterize_area_9_text,
                    :characterize_area_10_text,
                    :characterize_area_other,
                    :survey_preferences_1,
                    :survey_preferences_2,
                    :survey_preferences_3,
                    :survey_preferences_4,
                    :survey_preferences_5,
                    :survey_preferences_1_text,
                    :survey_preferences_2_text,
                    :survey_preferences_3_text,
                    :survey_preferences_4_text,
                    :survey_preferences_5_text,
                    :created_at, 
                    :updated_at
  
end
