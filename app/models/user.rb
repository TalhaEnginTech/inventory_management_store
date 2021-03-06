class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :companies

  # has_many :subordinates, class_name: "User",
  #          foreign_key: "manager_id"
  # belongs_to :manager, class_name: 'User', optional: true
end
