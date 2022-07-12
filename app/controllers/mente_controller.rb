class MenteController < ApplicationController
  # before_action :set_about


  def index
    # @texto = 'text-muted'
    @abouts = About.all.order(:orden)
    @about = About.where(orden: 1).take!
    @tiles = About.all.sample(3)

    # render 'mente/index.html.erb'
  end

  def show
    todos = About.all
    about = About.where(:id => params[:id])
    @abouts = about + (todos - about)
    @tiles = About.all.sample(3)
    @about = About.find(params[:id])
    # bo = an

    render 'mente/index'
  end

  def abouts
    render 'abouts/index.html.erb'
  end

end
