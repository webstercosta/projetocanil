class NinhadasController < ApplicationController
  before_action :set_ninhada, only: [:show, :edit, :update, :destroy]

  # GET /ninhadas
  # GET /ninhadas.json
  def index
    @ninhadas = Ninhada.all
  end

  # GET /ninhadas/1
  # GET /ninhadas/1.json
  def show
  end

  # GET /ninhadas/new
  def new
    @ninhada = Ninhada.new
  end

  # GET /ninhadas/1/edit
  def edit
  end

  # POST /ninhadas
  # POST /ninhadas.json
  def create
    @ninhada = Ninhada.new(ninhada_params)

    respond_to do |format|
      if @ninhada.save
        format.html { redirect_to @ninhada, notice: 'Ninhada was successfully created.' }
        format.json { render :show, status: :created, location: @ninhada }
      else
        format.html { render :new }
        format.json { render json: @ninhada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ninhadas/1
  # PATCH/PUT /ninhadas/1.json
  def update
    respond_to do |format|
      if @ninhada.update(ninhada_params)
        format.html { redirect_to @ninhada, notice: 'Ninhada was successfully updated.' }
        format.json { render :show, status: :ok, location: @ninhada }
      else
        format.html { render :edit }
        format.json { render json: @ninhada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ninhadas/1
  # DELETE /ninhadas/1.json
  def destroy
    @ninhada.destroy
    respond_to do |format|
      format.html { redirect_to ninhadas_url, notice: 'Ninhada was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ninhada
      @ninhada = Ninhada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ninhada_params
      params.require(:ninhada).permit(:nome, :quantidade_vivo, :quantidade_falecido, :parto, :situacao, :observacao, :matriz_id, :padreador_id)
    end
end
