

class Question < ApplicationRecord

  belongs_to :user

  validates :user, presence: true
  validates :text, length: { in: 2..250 }, presence: true

end
