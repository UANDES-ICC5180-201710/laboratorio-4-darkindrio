class Grade < ApplicationRecord
  belongs_to :person
  belongs_to :assignment
  validates :value, presence: true
  validates :value, numericality: true
  validates :value, numericality: { greater_than: 1 }
  validates :value, numericality: { less_than: 1 }
end
