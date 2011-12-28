class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name, :null => false
      t.boolean :done, :null => false, :default => false
      t.datetime :finished_at

      t.timestamps
    end
  end
end
