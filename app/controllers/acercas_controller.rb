class AcercasController < ApplicationController
  before_action :set_acerca, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy, :index]
  load_and_authorize_resource

  # GET /acercas
  # GET /acercas.json
  def index
    @acercas = Acerca.all
  end

  # GET /acercas/1
  # GET /acercas/1.json
  def show
    @acercas = Acerca.all
  end

  # GET /acercas/new
  def new
    @acerca = Acerca.new
  end

  # GET /acercas/1/edit
  def edit
  end

  # POST /acercas
  # POST /acercas.json
  def create
    @acerca = Acerca.new(acerca_params)

    respond_to do |format|
      if @acerca.save
        format.html { redirect_to @acerca, notice: 'Acerca was successfully created.' }
        format.json { render :show, status: :created, location: @acerca }
      else
        format.html { render :new }
        format.json { render json: @acerca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acercas/1
  # PATCH/PUT /acercas/1.json
  def update
    respond_to do |format|
      if @acerca.update(acerca_params)
        format.html { redirect_to @acerca, notice: 'Acerca was successfully updated.' }
        format.json { render :show, status: :ok, location: @acerca }
      else
        format.html { render :edit }
        format.json { render json: @acerca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acercas/1
  # DELETE /acercas/1.json
  def destroy
    @acerca.destroy
    respond_to do |format|
      format.html { redirect_to acercas_url, notice: 'Acerca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acerca
      @acerca = Acerca.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def acerca_params
      params.require(:acerca).permit(:foto, :subtitulofoto, :titulofoto, :titulopie, :texfoto, :texto1, :texto2, :texto3, :texto4, :texto5,
                                      :texto6, :texto7, :texto8, :texto9, :texto10, :texto11, :texto12, :texto13, :texto14, :texto15, :texto16,
                                      :texto17, :texto18, :texto19, :texto20)
      # params.fetch(:acerca, {})
    end
end
