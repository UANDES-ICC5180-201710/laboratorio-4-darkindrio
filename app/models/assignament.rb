class Assignament < ApplicationRecord
  belongs_to :course
  validates :title, :statment, presence: true
  validates :title, length: {maximum: 30}
end
