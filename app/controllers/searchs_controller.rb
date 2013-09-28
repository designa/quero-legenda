class SearchsController < ApplicationController

  def index
  end

  def result
    @title = params[:search][:title]
    get_results(@title)
  end


  protected

  def get_results(title)
    @videos = CLIENT.videos_by(query: title)
  end

end