class PagesController < ApplicationController
  def index
    @characters = Character.all
  end

  def fight
    @first_character = Character.find params[:first_character_id]
    @second_character = Character.find params[:second_character_id]
    @winner, @loser = @first_character.fight_with @second_character

    render 'fight_result'
  end
end
