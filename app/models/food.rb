class Food < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :description
  validates :price, presence: true, numericality: { only_float: true }
end
