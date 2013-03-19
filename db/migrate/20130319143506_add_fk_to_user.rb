class AddFkToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :user_roles_id, :integer
    add_column :user_project_roles, :project_id, :integer
    add_column :projects, :user_roles_id, :integer
    add_column :user_project_roles, :user_id, :integer
  end
  
  def self.down
    remove_column :users, :user_roles_fk 
    remove_column :user_project_roles, :project_id
    remove_column :projects, :user_roles_id  
    remove_column :user_project_roles, :user_id 
  end
end
