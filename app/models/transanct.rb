class Transanct < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :category_transacts, dependent: :destroy
  has_many :categories, through: :category_transacts, dependent: :destroy
  validates_presence_of :name, :amount, :user
end

# checked
