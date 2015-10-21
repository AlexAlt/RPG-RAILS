class UsersController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show, :new, :create]
  def index
  end

  def new

  end

  def create
    binding.pry
  end
end
