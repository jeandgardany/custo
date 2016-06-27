class CostureirasController < ApplicationController
  before_action :set_costureira, only: [:show, :edit, :update, :destroy]

  # GET /costureiras
  # GET /costureiras.json
  def index
    @costureiras = Costureira.all
  end

  # GET /costureiras/1
  # GET /costureiras/1.json
  def show
  end

  # GET /costureiras/new
  def new
    @costureira = Costureira.new
  end

  # GET /costureiras/1/edit
  def edit
  end

  # POST /costureiras
  # POST /costureiras.json
  def create
    @costureira = Costureira.new(costureira_params)

    respond_to do |format|
      if @costureira.save
        format.html { redirect_to @costureira, notice: 'Costureira was successfully created.' }
        format.json { render :show, status: :created, location: @costureira }
      else
        format.html { render :new }
        format.json { render json: @costureira.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /costureiras/1
  # PATCH/PUT /costureiras/1.json
  def update
    respond_to do |format|
      if @costureira.update(costureira_params)
        format.html { redirect_to @costureira, notice: 'Costureira was successfully updated.' }
        format.json { render :show, status: :ok, location: @costureira }
      else
        format.html { render :edit }
        format.json { render json: @costureira.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /costureiras/1
  # DELETE /costureiras/1.json
  def destroy
    @costureira.destroy
    respond_to do |format|
      format.html { redirect_to costureiras_url, notice: 'Costureira was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_costureira
      @costureira = Costureira.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def costureira_params
      params.require(:costureira).permit(:data, :nome, :valor_pago, :q_produto, :obs, :produto_id, :quantidade_id)
    end
end
