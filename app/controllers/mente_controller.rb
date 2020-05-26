class MenteController < ApplicationController
  # before_action :set_about


  def index
    # @texto = 'text-muted'
    @abouts = About.all.order(:orden)
    # render 'mente/index.html.erb'
  end

  def show
    todos = About.all
    about = About.where(:id => params[:id])
    @abouts = about + (todos - about)
    # bo = an

    render 'mente/index'
  end

  def abouts
    render 'abouts/index.html.erb'
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to @contact, notice: 'Contact was successfully created.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_contact
    #   @contact = Contact.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    def contact_params
      params.require(:contact).permit(:nombre, :email, :comentario)
    end


end
