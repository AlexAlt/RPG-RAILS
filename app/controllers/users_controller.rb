class UsersController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show, :new, :create]
  def index
  end

  def new

  end

  def create
  end
end

# Remember:
# http://stackoverflow.com/questions/11678508/email-cant-be-blank-devise-using-username-or-email
