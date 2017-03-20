class CatForm < ApplicationRecord
  has_many :forms, dependent: :destroy
end
