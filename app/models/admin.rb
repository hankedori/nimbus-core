class Admin < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable, :omniauthable
          
  include DeviseTokenAuth::Concerns::User

  belongs_to :retailer
end
