class UsersController < ApplicationController

  before_action :get_user,       only: [ :show, :edit, :update ]
  before_action :check_if_admin, only: [ :index, :destroy ]
  # before_action :check_if_logged_in
  # def like
  #   @post = Post.find(params[:id])
  #   @current_user.like!(@post)
  #   redirect_to user_path(@current_user.id)
  # end
  # #
  # def unlike
  #   @post = Post.find(params[:id])
  #   # if @current_user.likees(@comment)
  #     @current_user.unlike!(@post)
  #   # end
  #   redirect_to user_path(@current_user.id)
  #
  # end
  # def follow
  #   @user = User.find(params[:id])
  #   if (@user != @current_user)
  #     @current_user.follow!(@user)
  #     redirect_to user_path(@current_user)
  #   else
  #     redirect_to user_path(@current_user)
  #   end
  # end

  def searchUser

  if params[:name].present?
        @user = User.where(name:params[:name]).first

        redirect_to user_path(@user.id)
    end
  end
  def follow
    @post = Post.find(params[:id])
    @current_user.follow!(@post)
    redirect_to user_path(@current_user.id)
  end
  #
  def unfolow
    @post = Post.find(params[:id])
    # if @current_user.likees(@comment)
    @current_user.unfollow!(@post)
    # end
    redirect_to user_path(@current_user.id)

  end

  # def unlike_comment
  #    @user.unlike!(Comment.find params[:id]) # find comment_id
  #    redirect_to user_path(@user)
  # end
  #
  # def likes
  #   @user = @current_user # before_action :authenticate_user, only: [:likes]
  #   @post = User.find(params[:id])
  #   if (@user != @current_user)
  #     @user.like!(@user)
  #     redirect_to user_path(@current_user)
  #   else
  #     redirect_to user_path(@current_user)
  #   end
  #     # redirect_to :back, notice: "Liked this post successfully!"
  # end

  # def on_friendship_created(friendship)
  #   @dee.request_friend(@mac)
  # end
  #
  # def on_friendship_accepted(friendship)
  #   @user.friend_request(@dee)
  #   @dee.accept_request(@mac)
  # end
  #
  # def on_friendship_blocked(friendship)
  #   @dee.friend_request(@mac)
  #   @mac.block_friend(@dee)
  # end
  #
  # def on_friendship_unblocked(friendship)
  #   @dee.friend_request(@mac)
  #   @mac.unblock_friend(@dee)
  # end
  #
  # def on_friendship_pending(friendship)
  #   @mac.friend_request(@dee)
  #   @mac.pending_friends
  # end


  def add_friend

  end

  def remove_friend

  end


    def get_user
      @user = User.find params["id"]
    end

    def new
      @user = User.new
      # session["rando"] = Random.rand 100000
    end

    def create

      @user = User.new user_params
      if params[:file].present?
        req = Cloudinary::Uploader.upload(params[:file])
        @user.image = req['public_id']
      else
        @user.image = "v1499518624/sljlppoeqzc8tmcwylrq.jpg"
      end
      # if @user.id.present?
      #   session[:user_id] = @user.id  # perform login (set session)
      #   redirect_to user_path(@user.id)   # /users/17
      # else
      #   render :new
      # end
      if @user.save
        session[:user_id] = @user.id  # perform login (set session)
        redirect_to user_path(@user.id)   # /users/17
      else
        render :new
      end
    end

    def index
      @users = User.all
    end

    def show
    end

    def edit
      # @user = User.find params["id"]   # now in before_action
      # redirect_to root_path unless @current_user == @user

      redirect_to root_path unless @current_user == @user

    end

    def update
      # # @user = User.find params["id"]   # now in before_action
      # # redirect_to root_path unless @current_user == @user
      #
      # @user = @current_user # makes sure user can only edit their own profile
      #
      # @user.update user_params
      # redirect_to user_path( params["id"] )
      # @user = User.find params["id"]   # now in before_action
    # redirect_to root_path unless @current_user == @user

    @user = @current_user # makes sure user can only edit their own profile
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @user.image = req['public_id']
    end
    @user.update user_params
    redirect_to user_path( params["id"] )
    end

    def destroy
      User.find( params["id"] ).destroy
      redirect_to users_path
    end

    private
    def user_params
      params.require(:user).permit(:email, :name, :image, :password, :password_confirmation, :age)
    end

  end
