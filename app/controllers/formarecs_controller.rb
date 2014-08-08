class FormarecsController < ApplicationController
  before_action :set_formarec, only: [:show, :edit, :update, :destroy]

  # GET /formarecs
  # GET /formarecs.json
  def index
    @formarecs = Formarec.all
  end

  # GET /formarecs/1
  # GET /formarecs/1.json
  def show
  end

  # GET /formarecs/new
  def new
    @formarec = Formarec.new
  end

  # GET /formarecs/1/edit
  def edit
  end

  # POST /formarecs
  # POST /formarecs.json
  def create
    @formarec = Formarec.new(formarec_params)

    respond_to do |format|
      if @formarec.save
        format.html { redirect_to @formarec, notice: 'Tipo de Recebimento criado com sucesso' }
        format.json { render :show, status: :created, location: @formarec }
      else
        format.html { render :new }
        format.json { render json: @formarec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formarecs/1
  # PATCH/PUT /formarecs/1.json
  def update
    respond_to do |format|
      if @formarec.update(formarec_params)
        format.html { redirect_to @formarec, notice: 'Tipo de Recebimento alterado com sucesso.' }
        format.json { render :show, status: :ok, location: @formarec }
      else
        format.html { render :edit }
        format.json { render json: @formarec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formarecs/1
  # DELETE /formarecs/1.json
  def destroy
    @formarec.destroy
    respond_to do |format|
      format.html { redirect_to formarecs_url, notice: 'Tipo de Recebimento excluido.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formarec
      @formarec = Formarec.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formarec_params
      params.require(:formarec).permit(:descr)
    end
end
