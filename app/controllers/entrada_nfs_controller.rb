class EntradaNfsController < ApplicationController
  before_action :set_entrada_nf, only: [:show, :edit, :update, :destroy]

  # GET /entrada_nfs
  # GET /entrada_nfs.json
  def index
    @entrada_nfs = EntradaNf.all
  end

  # GET /entrada_nfs/1
  # GET /entrada_nfs/1.json
  def show
  end

  # GET /entrada_nfs/new
  def new
    @entrada_nf = EntradaNf.new
  end

  # GET /entrada_nfs/1/edit
  def edit
  end

  # POST /entrada_nfs
  # POST /entrada_nfs.json
  def create
    @entrada_nf = EntradaNf.new(entrada_nf_params)

    respond_to do |format|
      if @entrada_nf.save
        format.html { redirect_to @entrada_nf, notice: 'Entrada nf incluida com sucesso.' }
        format.json { render :show, status: :created, location: @entrada_nf }
      else
        format.html { render :new }
        format.json { render json: @entrada_nf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entrada_nfs/1
  # PATCH/PUT /entrada_nfs/1.json
  def update
    respond_to do |format|
      if @entrada_nf.update(entrada_nf_params)
        format.html { redirect_to @entrada_nf, notice: 'Entrada nf alterada com sucesso.' }
        format.json { render :show, status: :ok, location: @entrada_nf }
      else
        format.html { render :edit }
        format.json { render json: @entrada_nf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entrada_nfs/1
  # DELETE /entrada_nfs/1.json
  def destroy
    @entrada_nf.destroy
    respond_to do |format|
      format.html { redirect_to entrada_nfs_url, notice: 'Entrada nf excluida com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entrada_nf
      @entrada_nf = EntradaNf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entrada_nf_params
      params.require(:entrada_nf).permit(:numero, :serie_nf, :participante_id, :data_emiss, :data_entrada, :vlr_frete, :vlr_encargos, :vlr_desc, :vlr_dif_aliq, :tot_icms, :tot_produtos, :tot_nf)
    end
end
