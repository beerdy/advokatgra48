class WelcomeController < ApplicationController
  def index
    @clients = Client.all
    @slider = Slider.all
    @hello  = Article.find(7)
    @slogan = Article.find(8)
    @info1  = Info.find(1)
    @info2  = Info.find(2)
    @info3  = Info.find(3)
    @info4  = Info.find(4)
    @info5  = Info.find(5)
  end
end
