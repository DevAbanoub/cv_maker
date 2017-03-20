class User < ApplicationRecord
  enum role: [:admin, :member]
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  has_many :cvs, dependent: :destroy
end
