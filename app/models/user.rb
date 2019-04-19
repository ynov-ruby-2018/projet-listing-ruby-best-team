class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :products
  
   def generate_token
      self.auth_token = SecureRandom.uuid
      if self.save
          return auth_token
      else
          return nil
      end
   end
  
end
