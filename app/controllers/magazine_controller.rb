class MagazineController < ApplicationController
  def index
    @special = Article.find(9)
  end
end
