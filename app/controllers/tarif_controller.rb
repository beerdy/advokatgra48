class TarifController < ApplicationController
  def index
    @groups = Group.all
  end
end
