class WelcomeController < ApplicationController
  def index
    @clients = Client.all
    @slider = Slider.all
    @hello  = Article.find(7)
    @slogan = Article.find(8)
    
    infos = Info.all
    @info1  = infos[0]
    @info2  = infos[1]
    @info3  = infos[2]
    @info4  = infos[3]
    @info5  = infos[4]

    @infos = []
    infos[5..-1].each do |info|
        @infos << info
    end
  end
end
