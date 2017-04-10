class Person < ApplicationRecord
  has_many :enrollments
  has_many :courses, through: :enrollments
  validates :first_name, :last_name, presence: true
  validates :first_name, :last_name, length: {maximum: 30}
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email , format: {with: /\w*@{1}miuandes[.]cl/, message: "email invalido"}


  def to_s
    return first_name + ' ' + last_name
  end
end
