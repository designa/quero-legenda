class SearchsController < ApplicationController

  def index
  end

  def result
    @title = params[:search][:title]
    get_results(@title)
  end


  protected

  def get_results(title)
    @videos = YoutubeSearch.search(title,  orderby: 'viewCount', page: 10, per_page: 10)
  end

end