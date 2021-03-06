class ParticipantesController < ApplicationController
  before_action :set_participante, only: [:show, :edit, :update, :destroy]

  # GET /participantes
  # GET /participantes.json
  def index
    @participantes = Participante.all
  end

  # GET /participantes/1
  # GET /participantes/1.json
  def show
  end

  # GET /participantes/new
  def new
    @participante = Participante.new
    @participante.contatos.build
  end

  # GET /participantes/1/edit
  def edit
  end

  # POST /participantes
  # POST /participantes.json
  def create
    @participante = Participante.new(participante_params)

    respond_to do |format|
      if @participante.save
        format.html { redirect_to @participante, notice: 'Participante criado com sucesso.' }
        format.json { render :show, status: :created, location: @participante }
      else
        format.html { render :new }
        format.json { render json: @participante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /participantes/1
  # PATCH/PUT /participantes/1.json
  def update
    respond_to do |format|
      if @participante.update(participante_params)
        format.html { redirect_to @participante, notice: 'Participante alterado com sucesso.' }
        format.json { render :show, status: :ok, location: @participante }
      else
        format.html { render :edit }
        format.json { render json: @participante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participantes/1
  # DELETE /participantes/1.json
  def destroy
    @participante.destroy
    respond_to do |format|
      format.html { redirect_to participantes_url, notice: 'Participante excluido com sucesso.' }
      format.json { head :no_content }
    end
  end
    
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participante
      @participante = Participante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def participante_params
      params.require(:participante).permit(:tipo, :transportadora, :nome,:fantasia,:site, :cnpj, :ie,:optante_simples,:data_relacao,:inativo,:obs_relacoes,:indicado_por,:observacao, :ender, :numero, :complemento,
       :bairro, :cidade, :uf, :cep,:obs_ender, :ender_cob, :numero_cob, :complemento_cob, :bairro_cob, :cidade_cob, :uf_cob, :cep_cob,:obs_ender_cob, :ender_entrega, :numero_entrega, :complemento_entrega,
        :bairro_entrega, :cidade_entrega, :uf_entrega, :cep_entrega,:obs_ender_entrega, :tel1, :tel2, :tel3, :email_nfe, :email_contato, :cli_ou_for,
        contatos_attributes:[:nome,:email,:tel,:setor_id])
    end
end
