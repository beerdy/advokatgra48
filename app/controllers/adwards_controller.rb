class AdwardsController < ApplicationController
  before_action :set_adward, only: [:show, :edit, :update, :destroy]

  # GET /adwards
  # GET /adwards.json
  def index
    @adwards = Adward.all
  end

  # GET /adwards/1
  # GET /adwards/1.json
  def show
  end

  # GET /adwards/new
  def new
    @adward = Adward.new
  end

  # GET /adwards/1/edit
  def edit
  end

  # POST /adwards
  # POST /adwards.json
  def create
    @adward = Adward.new(adward_params)

    respond_to do |format|
      if @adward.save
        format.html { redirect_to @adward, notice: 'Adward was successfully created.' }
        format.json { render :show, status: :created, location: @adward }
      else
        format.html { render :new }
        format.json { render json: @adward.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adwards/1
  # PATCH/PUT /adwards/1.json
  def update
    respond_to do |format|
      if @adward.update(adward_params)
        format.html { redirect_to @adward, notice: 'Adward was successfully updated.' }
        format.json { render :show, status: :ok, location: @adward }
      else
        format.html { render :edit }
        format.json { render json: @adward.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adwards/1
  # DELETE /adwards/1.json
  def destroy
    @adward.destroy
    respond_to do |format|
      format.html { redirect_to adwards_url, notice: 'Adward was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adward
      @adward = Adward.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adward_params
      params.require(:adward).permit(:title, :description, :slave, :image_uid, :url)
    end
end
