class HomeController < ApplicationController

  def index
    @posts = Post.all.limit(1)
  end

end
