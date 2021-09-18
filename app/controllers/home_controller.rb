class HomeController < ApplicationController

  def index
    @posts = Post.all.order("id DESC").limit(1)
  end

end
