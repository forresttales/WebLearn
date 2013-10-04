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

#require 'digest/sha1'

class Register < ActiveRecord::Base
  
  attr_accessible :username, :account_type, :password, :password_confirmation
  
  
  # has_many :microposts, dependent: :destroy
  # has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  # has_many :followed_users, through: :relationships, source: :followed
  # has_many :reverse_relationships, foreign_key: "followed_id",
                                   # class_name: "Relationship",
                                   # dependent: :destroy
  # has_many :followers, through: :reverse_relationships, source: :follower
  # before_save { self.email = email.downcase }
  before_create :create_remember_token
  validates :username, presence: true, length: { maximum: 50 }
  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  # validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    # uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 4 }
    
    
    def Register.new_remember_token
      SecureRandom.urlsafe_base64
    end
  
    def Register.encrypt(token)
      Digest::SHA1.hexdigest(token.to_s)
    end
    
    # def feed
      # Micropost.from_users_followed_by(self)
    # end
#   
    # def following?(other_user)
      # relationships.find_by(followed_id: other_user.id)
    # end
#   
    # def follow!(other_user)
      # relationships.create!(followed_id: other_user.id)
    # end
#   
    # def unfollow!(other_user)
      # relationships.find_by(followed_id: other_user.id).destroy!
    # end
  
    private
  
      def create_remember_token
        self.remember_token = Register.encrypt(Register.new_remember_token)
      end
    
    
    
    
    
    # def self.authenticate(username="", password="")
      # user = Register.find_by_username(username)
      # if user && user.password_match?(password)
        # return user
      # else
        # return false
      # end
    # end
#   
    # def password_match?(password="")
      # hashed_password == Register.hash_with_salt(password, salt)
    # end
#     
    # def self.make_salt(username="")
      # Digest::SHA1.hexdigest("Use #{username} with #{Time.now} to make salt")
    # end
#     
    # def self.hash_with_salt(password="", salt="")
      # Digest::SHA1.hexdigest("Put #{salt} on the #{password}")
    # end
#     
    # private
#     
    # def create_hashed_password
      # unless password.blank?
        # self.salt = Register.make_salt(username) if salt.blank?
        # self.hashed_password = Register.hash_with_salt(password, salt)
      # end
    # end
#   
    # def clear_password
      # self.password = nil
    # end
    
  
end






    # has_secure_password
    # validates :password, length: { minimum: 4 }
#   
#   
#   
    # attr_accessible :id, :account_id, :username, :has_account, :account_type, 
      # :created_at, :updated_at, :password, :password_confirmation
#     
    # #attr_accessor :password
#   
#   
    # validates :username, :presence => true, :length => { :maximum => 25 }  
    # validates_length_of :password, :within => 4..25, :on => :create
#   
    # before_save :create_hashed_password
    # after_save :clear_password
#   
    # #scope :named, lambda {|first,last| where(:first_name => first, :last_name => last)}
#     
    # attr_protected :hashed_password, :salt
    
    # def name
      # "#{first_name} #{last_name}"
    # end

