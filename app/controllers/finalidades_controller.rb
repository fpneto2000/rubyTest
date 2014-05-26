class FinalidadesController < ApplicationController
  before_action :set_finalidade, only: [:show, :edit, :update, :destroy]

  # GET /finalidades
  # GET /finalidades.json
  def index
    @finalidades = Finalidade.all
  end

  # GET /finalidades/1
  # GET /finalidades/1.json
  def show
  end

  # GET /finalidades/new
  def new
    @finalidade = Finalidade.new
  end

  # GET /finalidades/1/edit
  def edit
  end

  # POST /finalidades
  # POST /finalidades.json
  def create
    @finalidade = Finalidade.new(finalidade_params)

    respond_to do |format|
      if @finalidade.save
        format.html { redirect_to @finalidade, notice: 'Finalidade criada com sucesso.' }
        format.json { render :show, status: :created, location: @finalidade }
      else
        format.html { render :new }
        format.json { render json: @finalidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /finalidades/1
  # PATCH/PUT /finalidades/1.json
  def update
    respond_to do |format|
      if @finalidade.update(finalidade_params)
        format.html { redirect_to @finalidade, notice: 'Finalidade atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @finalidade }
      else
        format.html { render :edit }
        format.json { render json: @finalidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finalidades/1
  # DELETE /finalidades/1.json
  def destroy
    @finalidade.destroy
    respond_to do |format|
      format.html { redirect_to finalidades_url, notice: 'Finalidade excluida com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finalidade
      @finalidade = Finalidade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def finalidade_params
      params.require(:finalidade).permit(:descr, :vlrgate, :vlrcomissmark, :vlrmarketing, :vlrembalagem, :vlrencargos)
    end
end
