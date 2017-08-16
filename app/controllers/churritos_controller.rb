class ChurritosController < ApplicationController
  before_action :set_churrito, only: [:show, :edit, :update, :destroy]

  # GET /churritos
  # GET /churritos.json
  def index
    @churritos = Churrito.all
  end

  # GET /churritos/1
  # GET /churritos/1.json
  def show
  end

  # GET /churritos/new
  def new
    @churrito = Churrito.new
  end

  # GET /churritos/1/edit
  def edit
  end

  # POST /churritos
  # POST /churritos.json
  def create
    @churrito = Churrito.new(churrito_params)

    respond_to do |format|
      if @churrito.save
        format.html { redirect_to @churrito, notice: 'Churrito was successfully created.' }
        format.json { render :show, status: :created, location: @churrito }
      else
        format.html { render :new }
        format.json { render json: @churrito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /churritos/1
  # PATCH/PUT /churritos/1.json
  def update
    respond_to do |format|
      if @churrito.update(churrito_params)
        format.html { redirect_to @churrito, notice: 'Churrito was successfully updated.' }
        format.json { render :show, status: :ok, location: @churrito }
      else
        format.html { render :edit }
        format.json { render json: @churrito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /churritos/1
  # DELETE /churritos/1.json
  def destroy
    @churrito.destroy
    respond_to do |format|
      format.html { redirect_to churritos_url, notice: 'Churrito was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_churrito
      @churrito = Churrito.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def churrito_params
      params.require(:churrito).permit(:nombre, :sabor, :precio)
    end
end
