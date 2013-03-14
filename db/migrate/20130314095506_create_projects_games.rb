class CreateProjectsGames < ActiveRecord::Migration
  def up
    create_table :projects_games, id: false do |t|
      t.integer :project_id, null: false
      t.integer :game_id, null: false
    end
    add_index :projects_games, [:project_id, :game_id], unique: true
  end

  def down
    remove_index :projects_games, column: [:project_id, :game_id]
    drop_table :projects_games
  end
end
