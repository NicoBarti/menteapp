class AutoresController < ApplicationController
  before_action :set_autore, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy, :index]
  load_and_authorize_resource

  # GET /autores
  # GET /autores.json
  def index
    @autores = Autore.all
  end

  # GET /autores/1
  # GET /autores/1.json
  def show
  end

  # GET /autores/new
  def new
    @autore = Autore.new
  end

  # GET /autores/1/edit
  def edit
  end

  # POST /autores
  # POST /autores.json
  def create
    @autore = Autore.new(autore_params)

    respond_to do |format|
      if @autore.save
        format.html { redirect_to @autore, notice: 'Se creo el autor.' }
        format.json { render :show, status: :created, location: @autore }
      else
        format.html { render :new }
        format.json { render json: @autore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /autores/1
  # PATCH/PUT /autores/1.json
  def update
    respond_to do |format|
      if @autore.update(autore_params)
        format.html { redirect_to @autore, notice: 'Autore was successfully updated.' }
        format.json { render :show, status: :ok, location: @autore }
      else
        format.html { render :edit }
        format.json { render json: @autore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autores/1
  # DELETE /autores/1.json
  def destroy
    @autore.destroy
    respond_to do |format|
      format.html { redirect_to autores_url, notice: 'Autore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autore
      @autore = Autore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def autore_params
      params.require(:autore).permit(:nombre, :avatar, :descripcionCorta, :texto)
      # params.fetch(:autore, {:nombre, :avatar, : v})
    end
end
