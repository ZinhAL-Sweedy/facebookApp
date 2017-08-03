class CommentsController < ApplicationController
  before_action :get_comment,       only: [ :show, :edit, :update ]

  before_action :check_if_logged_in, only: [:new, :create, :edit, :update]

  before_action :check_if_admin, only: [ :admin_index ]
  # GET /comments
  # GET /comments.json

  def like
    @comment = Comment.find(params[:id])
    @current_user.like!(@comment)
    # raise 'hell'
    redirect_to user_path(@current_user.id)
  end
  #
  def unlike
    @comment = Comment.find(params[:id])
    # if @current_user.likees(@comment)
      @current_user.unlike!(@comment)
    # end
    redirect_to user_path(@current_user.id)
  end

  def follow
    @comment = Comment.find(params[:id])
    @current_user.follow!(@comment)
    redirect_to user_path(@current_user.id)
  end
  #
  def unfolow
    @commentt = Comment.find(params[:id])
    # if @current_user.likees(@comment)
    @current_user.unfollow!(@comment)
    # end
    redirect_to user_path(@current_user.id)

  end


  def get_comment

    @comment = Comment.find(params[:id])
  end
  def index
    @comments = Comment.all
  end


  def admin_index
    @comments = Comment.all
  end
  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new

  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)

      cont = params["comment"]["content"]
      user_id = @current_user.id
      title = params["comment"]["title"]
      post_id = params["post_id"]

      @comment = Comment.new content:cont, user_id:user_id, title:title, post_id:post_id



      if params[:file].present?
        req = Cloudinary::Uploader.upload(params[:file])
        @comment.image = req['public_id']

      else
        @comment.image = "itykdos1v3hhivwnmdxz"

      end
      @comment.post_id = params["post_id"]

      @comment.user_id = @current_user.id

      if @comment.save
        redirect_to comment_path(@comment)
      end
    # respond_to do |format|
    #   if @comment.save
    #     format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
    #     format.json { render :show, status: :created, location: @comment }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @comment.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    # respond_to do |format|
    #   if @comment.update(comment_params)
    #     format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @comment }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @comment.errors, status: :unprocessable_entity }
    #   end
    # end
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @comment.image = req['public_id']
      end
      @comment.update comment_params
      redirect_to post_path( @comment.post_id )
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    # @comment.destroy
    # respond_to do |format|
    #   format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
    Comment.find( params["id"] ).destroy

    redirect_to comments_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:title, :user_id, :content, :image, :post_id)
    end
end
