class UsersController < ApplicationController
  before_action :set_user, only: %i[ show ]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params

    if @user.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.expect(user: [ :email_address, :firstname, :lastname, :password, :password_confirmation, :rank ])
    end
end
