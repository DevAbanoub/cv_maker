class Template < ApplicationRecord
  has_many :cvs, dependent: :destroy
end
