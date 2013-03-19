class UserProjectRole < ActiveRecord::Base
  attr_accessible :proj_role, :proj_id, :user_id  
  belongs_to :projects
  belongs_to :users
  validates_inclusion_of :role, :in => ["None","koordynator merytoryczny", "trener","asystent", "reporter"]
end
