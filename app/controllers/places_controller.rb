class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
    @user = current_user
    @monster = @place.monsters.first
    if @place.accessible? == false
      flash[:alert] = "you shall not pass (yet) !"
      redirect_to places_path()
    end
  end

  def create
  end

  def fight
    @user = User.find(params[:id])
    @place = Place.find(params[:place_id])
    @monster = @place.monsters.first
    userdmg = rand(0..@user.attack)
    monsterdmg = rand(0..@monster.attack)

    if userdmg >= monsterdmg && @place.accessible?
      @monster.update_attributes(:alive? => false)
      @monster.update_attributes(:token => "images/thumb/gravestone.png")
      @place.update_attributes(:accessible? => true)
      flash[:alert] = "you won"
      Place.scout(@place)
      redirect_to places_path()

    else
      flash[:alert] = "the monster takes your cookies, you cry"
      redirect_to places_path()
    end
  end




end
