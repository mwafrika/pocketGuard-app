class Transanct < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :category_transacts, dependent: :destroy
  has_many :categories, through: :category_transacts, dependent: :destroy
  validates_presence_of :user
  validates :name, presence: true, length: { maximum: 30 }
  validates :amount, presence: true
end
