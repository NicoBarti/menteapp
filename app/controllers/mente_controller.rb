class MenteController < ApplicationController

  def index
    @abouts = About.all
    # render 'mente/index.html.erb'
  end

  def abouts
    render 'abouts/index.html.erb'
  end
end
