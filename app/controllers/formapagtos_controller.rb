class FormapagtosController < ApplicationController
  before_action :set_formapagto, only: [:show, :edit, :update, :destroy]

  # GET /formapagtos
  # GET /formapagtos.json
  def index
    @formapagtos = Formapagto.all
  end

  # GET /formapagtos/1
  # GET /formapagtos/1.json
  def show
  end

  # GET /formapagtos/new
  def new
    @formapagto = Formapagto.new
  end

  # GET /formapagtos/1/edit
  def edit
  end

  # POST /formapagtos
  # POST /formapagtos.json
  def create
    @formapagto = Formapagto.new(formapagto_params)

    respond_to do |format|
      if @formapagto.save
        format.html { redirect_to @formapagto, notice: 'Forma de pagto criado com sucesso.' }
        format.json { render :show, status: :created, location: @formapagto }
      else
        format.html { render :new }
        format.json { render json: @formapagto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formapagtos/1
  # PATCH/PUT /formapagtos/1.json
  def update
    respond_to do |format|
      if @formapagto.update(formapagto_params)
        format.html { redirect_to @formapagto, notice: 'Forma de pagto alterado com sucesso.' }
        format.json { render :show, status: :ok, location: @formapagto }
      else
        format.html { render :edit }
        format.json { render json: @formapagto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formapagtos/1
  # DELETE /formapagtos/1.json
  def destroy
    @formapagto.destroy
    respond_to do |format|
      format.html { redirect_to formapagtos_url, notice: 'Forma de pagto excluido com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formapagto
      @formapagto = Formapagto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formapagto_params
      params.require(:formapagto).permit(:descr,:recebimento,:pagamento,:pagto_nfe,:qt_parcelas,:dias_apos_prim_parc,
      :dias_entre_parc,:prorrogar_para,:dia_fixo,:dias_uteis_corridos,:receb_parc_id,:receb_entrada_id)
    end
end
