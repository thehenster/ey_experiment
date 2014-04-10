class WelcomeController < ApplicationController

  def index
    render :text => Log.all.to_s, layout: false
  end

end