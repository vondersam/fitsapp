class Plan < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, uniqueness: true
  validates :meal, presence: true
  validates :exercise, presence: true
  validates :meditation, presence: true
  validates :date, presence: true
end
