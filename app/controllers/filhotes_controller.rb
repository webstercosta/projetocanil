class FilhotesController < ApplicationController
  before_action :set_filhote, only: [:show, :edit, :update, :destroy]
  before_action :set_matrizes, only: [:edit, :update, :new]
  before_action :set_padreadores, only: [:edit, :update, :new]
  before_action :set_racas, only: [:edit, :update, :new]
  before_action :set_caracteristicas, only: [:edit, :update, :new]
  before_action :set_ninhadas, only: [:edit, :update, :new]
  before_action :authenticate_usuario!

  # GET /filhotes
  # GET /filhotes.json
  def index
    @filhotes = Filhote.all
  end

  # GET /filhotes/1
  # GET /filhotes/1.json
  def show
  end

  # GET /filhotes/new
  def new
    @filhote = Filhote.new
  end

  # GET /filhotes/1/edit
  def edit
  end

  # POST /filhotes
  # POST /filhotes.json
  def create
    @filhote = Filhote.new(filhote_params)

    respond_to do |format|
      if @filhote.save
        format.html { redirect_to @filhote, notice: 'Filhote was successfully created.' }
        format.json { render :show, status: :created, location: @filhote }
      else
        format.html { render :new }
        format.json { render json: @filhote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /filhotes/1
  # PATCH/PUT /filhotes/1.json
  def update
    respond_to do |format|
      if @filhote.update(filhote_params)
        format.html { redirect_to @filhote, notice: 'Filhote was successfully updated.' }
        format.json { render :show, status: :ok, location: @filhote }
      else
        format.html { render :edit }
        format.json { render json: @filhote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filhotes/1
  # DELETE /filhotes/1.json
  def destroy
    @filhote.destroy
    respond_to do |format|
      format.html { redirect_to filhotes_url, notice: 'Filhote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filhote
      @filhote = Filhote.find(params[:id])
    end
    def set_matrizes
      @matrizes = Matriz.all
    end
    def set_padreadores
      @padreadores = Padreador.all
    end
    def set_racas
      @racas = Raca.all
    end
    def set_caracteristicas
      @caracteristicas = Caracteristica.all
    end
    def set_ninhadas
      @ninhadas = Ninhada.all
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def filhote_params
      params.require(:filhote).permit(:nome, :data_nascimento, :preco, :disponivel, :raca_id, :caracteristica_id, :matriz_id, :padreador_id, :ninhada_id)
    end
end
