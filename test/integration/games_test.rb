require 'test_helper'
require 'minitest/reporters'
MiniTest::Reporters.use!

class GamesTest < ActionController::IntegrationTest
  def test_add_game_to_project
    # see that checkboxes exist
    get "/projects/#{projects(:urzad_miasta).id}"

    # post new games
    # check changes and remembered history
  end

  def test_remove_game_from_project
    # post remove of one game
    # check binding
    # post remove of all games
    # check binding
  end

  def test_delete_game
    # delete game
    # check that it is deleted but project exists
  end
end
