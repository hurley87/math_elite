class User < ActiveRecord::Base
	authenticates_with_sorcery!
	
	validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :email, uniqueness: true
  
  has_many :updates
  
  has_many :submits, :through => :levels
  
end
