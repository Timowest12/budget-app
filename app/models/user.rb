# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :Name, presence: true
  validates :email, presence: true

  has_many :groups, dependent: :destroy
  has_many :expenditures, dependent: :destroy

  # validates :Name, presence: true, length: { minimum: 3 }
end
