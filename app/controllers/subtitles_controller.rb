class SubtitlesController < ApplicationController
  
  def new
    @subtitle = Subtitle.new(url: params[:subtitle][:url], language: params[:subtitle][:language])
  end

  def create
    @subtitle = Subtitle.new(url: params[:subtitle][:url], language: params[:subtitle][:language], email: params[:subtitle][:email])
    @subtitle.save
  end

end