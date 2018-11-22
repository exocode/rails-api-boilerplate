class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :database_authenticatable, :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :registerable,
         :recoverable, :rememberable, :validatable

end
