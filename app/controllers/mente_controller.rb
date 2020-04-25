class MenteController < ApplicationController

  def index
    # @texto = 'text-muted'
    @abouts = About.all.order(:orden)
    # render 'mente/index.html.erb'
  end

  def abouts
    render 'abouts/index.html.erb'
  end
end
