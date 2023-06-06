class User < ApplicationRecord
  has_secure_password

  before_validation :lower_case

  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, length: {minimum: 8}


  

  def lower_case 
    email.downcase! if email.present?
  end

  def self.authenticate_with_credentials(email, password) 
    user = User.find_by(email: email)
   
    if user.present? && user.authenticate(password)
        
        user 
    end
  end


end
