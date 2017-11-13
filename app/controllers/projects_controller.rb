class ProjectsController < ApplicationController
  def index
    @work1 = Work.find(1)
    @work2 = Work.find(2)
    @work3 = Work.find(3)
    @work4 = Work.find(4)
    @work5 = Work.find(5)
    @work6 = Work.find(6)
    @work7 = Work.find(7)

    @special = Article.find(9)
  end
end
