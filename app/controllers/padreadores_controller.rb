class PadreadoresController < ApplicationController
  before_action :set_padreador, only: [:show, :edit, :update, :destroy]

  # GET /padreadores
  # GET /padreadores.json
  def index
    @padreadores = Padreador.all
  end

  # GET /padreadores/1
  # GET /padreadores/1.json
  def show
  end

  # GET /padreadores/new
  def new
    @padreador = Padreador.new
  end

  # GET /padreadores/1/edit
  def edit
  end

  # POST /padreadores
  # POST /padreadores.json
  def create
    @padreador = Padreador.new(padreador_params)

    respond_to do |format|
      if @padreador.save
        format.html { redirect_to @padreador, notice: 'Padreador was successfully created.' }
        format.json { render :show, status: :created, location: @padreador }
      else
        format.html { render :new }
        format.json { render json: @padreador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /padreadores/1
  # PATCH/PUT /padreadores/1.json
  def update
    respond_to do |format|
      if @padreador.update(padreador_params)
        format.html { redirect_to @padreador, notice: 'Padreador was successfully updated.' }
        format.json { render :show, status: :ok, location: @padreador }
      else
        format.html { render :edit }
        format.json { render json: @padreador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /padreadores/1
  # DELETE /padreadores/1.json
  def destroy
    @padreador.destroy
    respond_to do |format|
      format.html { redirect_to padreadores_url, notice: 'Padreador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_padreador
      @padreador = Padreador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def padreador_params
      params.require(:padreador).permit(:nome, :data_nascimento, :falecido, :raca_id, :caracteristica_id)
    end
end
