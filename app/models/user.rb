class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :galleries
  has_many :musics
  has_many :tours
  has_many :news
  has_many :fans
  has_many :videos
end
