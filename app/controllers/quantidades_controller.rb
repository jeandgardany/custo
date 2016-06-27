class QuantidadesController < ApplicationController
  before_action :set_quantidade, only: [:show, :edit, :update, :destroy]

  # GET /quantidades
  # GET /quantidades.json
  def index
    @quantidades = Quantidade.all
  end

  # GET /quantidades/1
  # GET /quantidades/1.json
  def show
    @produtos = @quantidade.produtos.all
  end

  # GET /quantidades/new
  def new
    @quantidade = Quantidade.new
    @produtos = @quantidade.produtos.all
  end

  # GET /quantidades/1/edit
  def edit
    @produtos = @quantidade.produtos.all
  end

  # POST /quantidades
  # POST /quantidades.json
  def create
    @quantidade = Quantidade.new(quantidade_params)

    respond_to do |format|
      if @quantidade.save
        format.html { redirect_to @quantidade, notice: 'Quantidade was successfully created.' }
        format.json { render :show, status: :created, location: @quantidade }
      else
        format.html { render :new }
        format.json { render json: @quantidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quantidades/1
  # PATCH/PUT /quantidades/1.json
  def update
    respond_to do |format|
      if @quantidade.update(quantidade_params)
        format.html { redirect_to @quantidade, notice: 'Quantidade was successfully updated.' }
        format.json { render :show, status: :ok, location: @quantidade }
      else
        format.html { render :edit }
        format.json { render json: @quantidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quantidades/1
  # DELETE /quantidades/1.json
  def destroy
    @quantidade.destroy
    respond_to do |format|
      format.html { redirect_to quantidades_url, notice: 'Quantidade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quantidade
      @quantidade = Quantidade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quantidade_params
      params.require(:quantidade).permit(:q_corte, :rendimento, :compra_id, {:produto_ids => []})
    end
end
