class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
    @user = current_user
    @monster = @place.monsters.first


  end

  def create
  end

  def fight
    @user = User.find(params[:id])
    @monster = Place.find(params[:place_id]).monsters.first
    # binding.pry
    userdmg = rand(0..@user.attack)
    monsterdmg = rand(0..@monster.attack)
    if userdmg > monsterdmg
      @monster.destroy
      flash[:alert] = "you won"
      redirect_to places_path()
    else
      flash[:alert] = "the monster takes your cookies, you cry"
      redirect_to places_path()
    end
  end


end
