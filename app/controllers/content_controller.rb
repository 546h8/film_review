class ContentController < ApplicationController
  # before_action :set_content.only: [:director, :actor, :screeningDate, :genre]
  
    def new
    content = Content.new
    end
  
    def create
    
    end
  
    def show
  
    end
  
  # def toppage
  # end

  # def director
  #   @movie = movie.all

  # end

  # def actor
  #   @movie = movie.all
  # end

  # def screeningDate
  #   @movie = movie.all
  # end

  # def genre
  #   @movie = movie.all
  # end

end
