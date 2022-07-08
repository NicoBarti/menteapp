class MenteController < ApplicationController
  # before_action :set_about


  def index
    # @texto = 'text-muted'
    @abouts = About.all.shuffle
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

end
