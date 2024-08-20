class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.string :status
      t.datetime :due_date
      t.timestamps
    end
  end
end
