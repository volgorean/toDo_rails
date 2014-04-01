class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.column :description, :text
      t.column :complete, :boolean, :default => false
      t.column :list_id, :integer

      t.timestamps
    end
  end
end
