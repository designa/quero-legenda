class WelcomeController < ApplicationController
  def index
    @most_viewed = CLIENT.videos_by(:most_viewed, per_page: 9)
    @subtitle = Subtitle.new
  end
end
