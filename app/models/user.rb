class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  include DeviseTokenAuth::Concerns::User

  has_many :orders
  has_many :verification_documents
  has_many :addresses

  def fullname
    name || first_name + " " + last_name
  end
end
