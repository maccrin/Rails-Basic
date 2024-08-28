class AddStatusToTasks < ActiveRecord::Migration[7.1]
  def up
    execute <<-SQL
      CREATE TYPE task_status AS ENUM ('pending', 'in_progress', 'complete');
    SQL
    change_column :tasks, :status, :task_status, using: 'status::text::task_status'
  end

  def down
    change_column :tasks, :status, :string
    execute <<-SQL
      DROP TYPE task_status;
    SQL
  end
end
