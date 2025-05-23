class UsersController < ApplicationController
  before_action :require_chef!, only: %i[ new create update destroy ]
  before_action :set_user, only: %i[ show update destroy ]

  def index
    @users = User.all
    @user = User.find_by(id: params[:edit_user]) if params[:edit_user]
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

  def update
    if @user.update user_params
      redirect_to users_path
    else
      @users = User.all
      render :index, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy!

    redirect_to users_path
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.expect(user: [ :email_address, :firstname, :lastname, :password, :password_confirmation, :rank ])
    end
end
