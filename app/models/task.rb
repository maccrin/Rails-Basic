class Task < ApplicationRecord
  has_and_belongs_to_many :users
  validates:title,presence:true
  validates:description,presence:true
  validates:description,presence:true
  validates:due_date,presence:true
  enum status:{pending:0,in_progress:1,completed:2}
end
