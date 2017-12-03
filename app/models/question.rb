

class Question < ApplicationRecord

  belongs_to :user
  belongs_to :author, class_name: 'User', optional: true

  validates :user, presence: true
  validates :text, length: { in: 1..250 }, presence: true

end
