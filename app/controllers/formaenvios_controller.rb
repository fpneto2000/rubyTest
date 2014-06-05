class FormaenviosController < ApplicationController
  before_action :set_formaenvio, only: [:show, :edit, :update, :destroy]

  # GET /formaenvios
  # GET /formaenvios.json
  def index
    @formaenvios = Formaenvio.all
  end

  # GET /formaenvios/1
  # GET /formaenvios/1.json
  def show
  end

  # GET /formaenvios/new
  def new
    @formaenvio = Formaenvio.new
  end

  # GET /formaenvios/1/edit
  def edit
  end

  # POST /formaenvios
  # POST /formaenvios.json
  def create
    @formaenvio = Formaenvio.new(formaenvio_params)

    respond_to do |format|
      if @formaenvio.save
        format.html { redirect_to @formaenvio, notice: 'Forma de envio criado com sucesso.' }
        format.json { render :show, status: :created, location: @formaenvio }
      else
        format.html { render :new }
        format.json { render json: @formaenvio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formaenvios/1
  # PATCH/PUT /formaenvios/1.json
  def update
    respond_to do |format|
      if @formaenvio.update(formaenvio_params)
        format.html { redirect_to @formaenvio, notice: 'Forma de envio alterado com sucesso.' }
        format.json { render :show, status: :ok, location: @formaenvio }
      else
        format.html { render :edit }
        format.json { render json: @formaenvio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formaenvios/1
  # DELETE /formaenvios/1.json
  def destroy
    @formaenvio.destroy
    respond_to do |format|
      format.html { redirect_to formaenvios_url, notice: 'Forma de envio excluido com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formaenvio
      @formaenvio = Formaenvio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formaenvio_params
      params.require(:formaenvio).permit(:descr, :prazo_dias)
    end
end
