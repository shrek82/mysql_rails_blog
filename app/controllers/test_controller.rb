class TestController < ApplicationController
  def index
    @post = Post.find(2)

    #缺省会有render('test/view');
    #或者 render('index')

  end

  def view
    @post = Post.find(params[:id])
    @title= @post.title
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json : @post }
    end
  end


  #重定向
  def user
    @user=Users.new()
    @user.email='37294812@qq.com'
    @user.password='orange320'
    @user.save()

  end

  def user_need_login
    redirect_to(:action => 'login')
  end

  def login
    @age=30
  end
end
