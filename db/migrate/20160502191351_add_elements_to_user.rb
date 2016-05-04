class AddElementsToUser < ActiveRecord::Migration
  def change
    add_column :users, :is_student, :boolean
    add_column :users, :is_support, :boolean
    add_column :users, :is_active, :boolean
  end
end
