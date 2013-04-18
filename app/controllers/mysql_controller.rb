class MysqlController < ApplicationController
  def index
    #增加
    cmt=Comments.new(:user_id => 1, :content => 'test rails')
    cmt.save
  end

  def sqljoin
    @record=Comments.find_by_sql("select c.id,c.content,c.user_id,u.id as uid,u.username from comments c left join users u on u.id=c.user_id")
    print 'dddd'
    #不使用layout模板，当前模板文件
    render :layout => false
  end

  def first
    #查询不安全
    @record=Comments.where("user_id=18119").limit(10).to_sql
    #修改麻烦
    @record=Comments.where(:user_id => 18119).limit(10).to_sql
    #安全
    @record=Comments.where("user_id=?", 18119).limit(10).to_sql
    #@record=Comments.last

    Order.find_by_sql(["select * from orders where amount > ?", params[:amount]])

    order = Order.find(:first, :conditions => "name = 'Dave Thomas'", :order => "id DESC")
    @orders = Order.find(:all, :conditions => "name = 'Dave'", :order => "pay_type, shipped_at DESC", :limit => 10, :offset => 2)

    #不渲染
    #render :nothing=>true

  end

end
