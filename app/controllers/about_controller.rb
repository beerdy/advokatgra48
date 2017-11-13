class AboutController < ApplicationController
  def index
    @about_us = Article.find(1)
    @history  = Article.find(2)
    @jobs     = Article.find(3)

    @art1     = Article.find(4)
    @art2     = Article.find(5)
    @art3     = Article.find(6)

    @news     = News.all
    @teams    = Team.all

  end
end
