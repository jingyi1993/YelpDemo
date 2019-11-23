class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews, dependent: :destroy


  def fullname
    if self[:first_name].present? && self[:last_name].present?
      fullname = self[:first_name] +  ' ' +  self[:last_name]
    else
      fullname = ''
    end
    fullname
  end

end
