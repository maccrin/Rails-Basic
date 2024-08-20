class CreateJoinTableUsersTasks < ActiveRecord::Migration[7.1]
  def change
    create_join_table :users, :tasks ,id:false do |t|
     t.index:user_id
     t.index:task_id
    end
  end
end
