class AboutsController < ApplicationController
  before_action :set_about, only: [:show, :edit, :update, :destroy]

  # GET /abouts
  # GET /abouts.json

  # def about
  #   render 'abouts.html'
  # end

  def index
    @abouts = About.all.order(:orden)
  end

  # GET /abouts/1
  # GET /abouts/1.json
  def show
     @about = About.find(params[:id])
     @tiles = About.all.sample(3)
  end

  # GET /abouts/new
  def new
    @about = About.new
  end

  # GET /abouts/1/edit
  def edit
  end

  # POST /abouts
  # POST /abouts.json
  def create
    @about = About.new(about_params)

    respond_to do |format|
      if @about.save
        format.html { redirect_to @about, notice: 'el About fue creado con éxito, perlín.' }
        format.json { render :show, status: :created, location: @about }
      else
        format.html { render :new }
        format.json { render json: @about.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abouts/1
  # PATCH/PUT /abouts/1.json
  def update
    respond_to do |format|
      if @about.update(about_params)
        format.html { redirect_to @about, notice: 'el About fue actualizado con éxito, perlín.' }
        format.json { render :show, status: :ok, location: @about }
      else
        format.html { render :edit }
        format.json { render json: @about.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abouts/1
  # DELETE /abouts/1.json
  def destroy
    @about.destroy
    respond_to do |format|
      format.html { redirect_to abouts_url, notice: 'el About fue destruido con éxito, perlín.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about
      @about = About.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def about_params
      params.require(:about).permit(:img, :tema, :titulo, :subtitulo, :texto, :carrusel, :subtitSubrr, :subtitCont,
        :comentarios, :texto2, :texto3, :subcarrusel, :orden, :texto4, :texto5, :negritas)
      # params.fetch(:about, {:img, :tema, :titulo, :subtitulo, :texto})
    end
  end
