class SerienumsController < ApplicationController
  before_action :set_serienum, only: [:show, :edit, :update, :destroy]

  # GET /serienums
  # GET /serienums.json
  def index
    @serienums = Serienum.all
  end

  # GET /serienums/1
  # GET /serienums/1.json
  def show
  end

  # GET /serienums/new
  def new
    @serienum = Serienum.new
    @serienum.produto_id = params[:produto_id]
  end

  # GET /serienums/1/edit
  def edit
  end

  # POST /serienums
  # POST /serienums.json
  def create
    @serienum = Serienum.new(serienum_params)

    respond_to do |format|
      if @serienum.save
        format.html { redirect_to edit_produto_path(@serienum.produto), notice: 'Serie incluida com sucesso.' }
        format.json { render :show, status: :created, location: @serienum }
      else
        format.html { render :new }
        format.json { render json: @serienum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /serienums/1
  # PATCH/PUT /serienums/1.json
  def update
    respond_to do |format|
      if @serienum.update(serienum_params)
        format.html { redirect_to edit_produto_path(@serienum.produto), notice: 'Serie alterada com sucesso.' }
        format.json { render :show, status: :ok, location: @serienum }
      else
        format.html { render :edit }
        format.json { render json: @serienum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serienums/1
  # DELETE /serienums/1.json
  def destroy
    @serienum.destroy
    respond_to do |format|
      format.html { redirect_to edit_produto_path(@serienum.produto), notice: 'Numero de serie excluido com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_serienum
      @serienum = Serienum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def serienum_params
      params.require(:serienum).permit(:numero, :custo_liq, :preco_venda, :estoque, :larg_ce, :altura_ce, :profund_ce, :larg_se, :altura_se, :profund_se, :peso_ce, :peso_se, :produto_id, :fornecedor_id, :codigo_forn, :fabricante_id)
    end
end
