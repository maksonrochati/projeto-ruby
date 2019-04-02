class ConfiguresController < ApplicationController
  before_action :set_configure, only: [:show, :edit, :update, :destroy]

  # GET /configures
  # GET /configures.json
  def index
    @configures = Configure.all
  end

  # GET /configures/1
  # GET /configures/1.json
  def show
    @configures = Configure.find(params[:id])
  end

  # GET /configures/new
  def new
    @configure = Configure.new
  end

  # GET /configures/1/edit
  def edit
  end

  # POST /configures
  # POST /configures.json
  def create
    @configure = Configure.new(configure_params)

    respond_to do |format|
      if @configure.save
        format.html { redirect_to @configure, notice: 'Dados Criados Com Sucesso.' }
        format.json { render :show, status: :created, location: @configure }
      else
        format.html { render :new }
        format.json { render json: @configure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /configures/1
  # PATCH/PUT /configures/1.json
  def update
    respond_to do |format|
      if @configure.update(configure_params)
        format.html { redirect_to @configure, notice: 'Atualizado Com Sucesso.' }
        format.json { render :show, status: :ok, location: @configure }
      else
        format.html { render :edit }
        format.json { render json: @configure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /configures/1
  # DELETE /configures/1.json
  def destroy
    @configure.destroy
    respond_to do |format|
      format.html { redirect_to configures_url, notice: 'Apagado Com Sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_configure
      @configure = Configure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def configure_params
      params.require(:configure).permit(:ValorDoPonto, :MaximoDePontosPorCompra, :ValidadeDosPontos, :NumeroDeTelefone, :Cpf, :Email, :DataDeNascimento, :Genero)
    end
end
