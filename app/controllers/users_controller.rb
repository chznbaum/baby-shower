class UsersController < ApplicationController
    before_action :set_user, only: [:show]
    
    layout 'update'

    access all: :all

  # GET /users
  # GET /users.json
  def index
    @users = User.page(params[:page]).per(10)
    @page_title = "Users"
    @description = Faker::Lorem.words(25).join(" ")
  end

  # GET /users/1
  # GET /users/1.json
  def show
      @page_title = @user.name
      @description = Faker::Lorem.words(15).join(" ")
      @updates = @user.updates.page(params[:page]).per(10)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
end