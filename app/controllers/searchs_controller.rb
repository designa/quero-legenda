class SearchsController < ApplicationController

  def index
  end

  def result
    @title = params[:search][:title]
    @subtitle = Subtitle.new
    get_results(@title)
  end


  protected

  def get_results(title)
    @videos = CLIENT.videos_by(query: title, per_page: 9)
  end

end
