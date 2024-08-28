class Task < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :description,presence: true
  validates :due_date,presence: true
  enum status: { pending: 'pending', in_progress: 'in_progress', complete: 'complete' }
  #enum status:{pending:1,in_progress:2,completed:3}
end
