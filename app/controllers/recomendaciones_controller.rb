class RecomendacionesController < ApplicationController
  before_action :set_recomendacione, only: [:show, :edit, :update, :destroy]

  # GET /recomendaciones
  # GET /recomendaciones.json
  def index
    @recomendaciones = Recomendacione.all
  end

  # GET /recomendaciones/1
  # GET /recomendaciones/1.json
  def show
    @recomendaciones = Recomendacione.all.order(:orden).slice(1,100)
    @rec1 = Recomendacione.order(:orden).first
    render "/recomendaciones/show"
  end


  def muestra
    @recomendaciones = Recomendacione.all.order(:orden).slice(1,100)
    @rec1 =  Recomendacione.order(:orden).first
    render "/recomendaciones/show"
  end

  # GET /recomendaciones/new
  def new
    @recomendacione = Recomendacione.new
  end

  # GET /recomendaciones/1/edit
  def edit
  end

  # POST /recomendaciones
  # POST /recomendaciones.json
  def create
    @recomendacione = Recomendacione.new(recomendacione_params)

    respond_to do |format|
      if @recomendacione.save
        format.html { redirect_to @recomendacione, notice: 'Recomendacione was successfully created.' }
        format.json { render :show, status: :created, location: @recomendacione }
      else
        format.html { render :new }
        format.json { render json: @recomendacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recomendaciones/1
  # PATCH/PUT /recomendaciones/1.json
  def update
    respond_to do |format|
      if @recomendacione.update(recomendacione_params)
        format.html { redirect_to @recomendacione, notice: 'Recomendacione was successfully updated.' }
        format.json { render :show, status: :ok, location: @recomendacione }
      else
        format.html { render :edit }
        format.json { render json: @recomendacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recomendaciones/1
  # DELETE /recomendaciones/1.json
  def destroy
    @recomendacione.destroy
    respond_to do |format|
      format.html { redirect_to recomendaciones_url, notice: 'Recomendacione was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recomendacione
      @recomendacione = Recomendacione.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recomendacione_params
      # params.fetch(:recomendacione, {:titulo, :ruta})
      params.require(:recomendacione).permit(:titulo, :ruta, :orden)
    end
end
