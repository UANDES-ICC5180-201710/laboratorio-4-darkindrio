class Course < ApplicationRecord
  has_many :enrollments
  has_many :students, through: :enrollments
  belongs_to :teacher, class_name: 'Person', foreign_key: 'person_id'
  validates :title, :code, presence: true
  validates :title, length: {maximum: 30}
  validates :code, length: {maximum: 10}
  validates :title, :code, uniqueness: true
  validates :quota, presence: true
  validates :quota, numericality: { only_integer: true }

  def to_s
    return title
  end
end
