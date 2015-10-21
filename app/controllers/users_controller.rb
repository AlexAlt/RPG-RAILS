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
# https://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Literals
# update_attributes(:updated_at => 100.years.ago)
