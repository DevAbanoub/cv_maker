class Form < ApplicationRecord
  has_many :sub_forms, dependent: :destroy
  belongs_to :cvs, :cat_forms
end
