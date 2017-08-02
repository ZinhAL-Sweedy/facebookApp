class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :fetch_user
  # GET /posts
  # GET /posts.json
  # def likes
  #   @user = @current_user # before_action :authenticate_user, only: [:likes]
  #   @post = Post.find(params[:id])
  #   @user.like!(@post)
  #   redirect_to :back, notice: "Liked this post successfully!"
  # end




  def like
    @post = Post.find(params[:id])
    @current_user.like!(@post)
    redirect_to user_path(@current_user.id)
  end
  #
  def unlike
    @post = Post.find(params[:id])
    # if @current_user.likees(@comment)
      @current_user.unlike!(@post)
    # end
    redirect_to user_path(@current_user.id)

  end
  def get_post
    @post = Post.find params["id"]
  end



  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    # respond_to do |format|
    #   if @post.save
    #     format.html { redirect_to @post, notice: 'Post was successfully created.' }
    #     format.json { render :show, status: :created, location: @post }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @post.errors, status: :unprocessable_entity }
    #   end
    # end
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @post.image = req['public_id']
    else
      @post.image = "v1499518624/sljlppoeqzc8tmcwylrq.jpg"
    end

    @post.user_id = @current_user.id

    if @post.save
      redirect_to "/posts/#{ @post.id }"
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @post.image = req['public_id']
    end
    @post.update post_params
    redirect_to post_path( params["id"] )
    # respond_to do |format|
    #   if @post.update(post_params)
    #     format.html { redirect_to @post, notice: 'Post was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @post }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @post.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    # Post.find( params["id"] ).destroy
    #
    # redirect_to posts_path
    @post = Post.find(params[:id])
       @post.destroy
redirect_to posts_path
    # @post.destroy
    # respond_to do |format|
    #   format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :user_id, :integer, :content, :comment_id, :image)
    end
end
