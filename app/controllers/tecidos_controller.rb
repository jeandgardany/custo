class TecidosController < ApplicationController
  before_action :set_tecido, only: [:show, :edit, :update, :destroy]

  # GET /tecidos
  # GET /tecidos.json
  def index
    @tecidos = Tecido.all
  end

  # GET /tecidos/1
  # GET /tecidos/1.json
  def show
  end

  # GET /tecidos/new
  def new
    @tecido = Tecido.new
  end

  # GET /tecidos/1/edit
  def edit
  end

  # POST /tecidos
  # POST /tecidos.json
  def create
    @tecido = Tecido.new(tecido_params)

    respond_to do |format|
      if @tecido.save
        format.html { redirect_to @tecido, notice: 'Tecido was successfully created.' }
        format.json { render :show, status: :created, location: @tecido }
      else
        format.html { render :new }
        format.json { render json: @tecido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tecidos/1
  # PATCH/PUT /tecidos/1.json
  def update
    respond_to do |format|
      if @tecido.update(tecido_params)
        format.html { redirect_to @tecido, notice: 'Tecido was successfully updated.' }
        format.json { render :show, status: :ok, location: @tecido }
      else
        format.html { render :edit }
        format.json { render json: @tecido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tecidos/1
  # DELETE /tecidos/1.json
  def destroy
    @tecido.destroy
    respond_to do |format|
      format.html { redirect_to tecidos_url, notice: 'Tecido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tecido
      @tecido = Tecido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tecido_params
      params.require(:tecido).permit(:nome, :largura)
    end
end
