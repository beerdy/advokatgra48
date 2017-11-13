class ProjectsController < ApplicationController
  def index
    works = Work.all
    @work1 = works[0]
    @work2 = works[1]
    @work3 = works[2]
    @work4 = works[3]
    @work5 = works[4]
    @work6 = works[5]
    @work7 = works[6]

    @special = Article.find(9)

    @works = []
    works[7..-1].each do |work|
        @works << work
    end
  end
end
