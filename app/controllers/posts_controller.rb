class PostsController < ApplicationController
  before_action( :find_post, { only: [:show, :edit, :update, :destroy] } )

  def index
    @posts = Post.all
  end

  def new
  end

  def create
    @post = Post.new( # 여기까지하면 저장은 안됨 save해야 저장 됨
      # title: params["post[title]"], # 배열처럼 넘김 post[0], post[1]
      # content: params["post[content]"] # 해시처럼 넘김 "post[title], post[content]"
      # title: params[["post"]["title"]], # 해시처럼 넘김
      # content: params[["post"]["content"]]
      post_params
    )
  if @post.save
    redirect_to '/'
  else
    flash[:alert] = "제목과 내용을 써야되여"
    redirect_to :back
  end


  end

  def show
    # find_post
  end

  def edit
    # find_post
  end

  def update
    # find_post
    @post.update(post_params)
    # redirect_to "/posts/#{@post.id}"
    redirect_to @post # id 값 찾아와서 post/id로 리디렉트함
  end

  def destroy
    # find_post
    @post.destroy
    redirect_to '/'
  end

  private # private 밑에있는건 프라이빗처리되서 다른곳에서 못쓰게 됨
          # MVC로직과 상관 없는것만 써야 함
  def find_post
    @post = Post.find(params[:id])
  end
  def post_params
    params.require(:post).permit(:title, :content)
    # params[:post][:title]
    # params[:post][:content]
  end

end
