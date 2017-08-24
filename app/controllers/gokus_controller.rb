class GokusController < ApplicationController
  before_action :set_goku, only: [:show, :edit, :update, :destroy]

  # GET /gokus
  # GET /gokus.json
  def index
    @gokus = Goku.all
  end

  # GET /gokus/1
  # GET /gokus/1.json
  def show
  end

  # GET /gokus/new
  def new
    @goku = Goku.new
  end

  # GET /gokus/1/edit
  def edit
  end

  # POST /gokus
  # POST /gokus.json
  def create
    @goku = Goku.new(goku_params)

    respond_to do |format|
      if @goku.save
        format.html { redirect_to @goku, notice: 'Goku was successfully created.' }
        format.json { render :show, status: :created, location: @goku }
      else
        format.html { render :new }
        format.json { render json: @goku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gokus/1
  # PATCH/PUT /gokus/1.json
  def update
    respond_to do |format|
      if @goku.update(goku_params)
        format.html { redirect_to @goku, notice: 'Goku was successfully updated.' }
        format.json { render :show, status: :ok, location: @goku }
      else
        format.html { render :edit }
        format.json { render json: @goku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gokus/1
  # DELETE /gokus/1.json
  def destroy
    @goku.destroy
    respond_to do |format|
      format.html { redirect_to gokus_url, notice: 'Goku was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goku
      @goku = Goku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goku_params
      params.require(:goku).permit(:title, :body)
    end
end
