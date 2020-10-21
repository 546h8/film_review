class ContentController < ApplicationController
  # before_action :set_content.only: [:director, :actor, :screeningDate, :genre]
  
    def new
    @content = Content.new
    end
  
    def create
    @content = Content.new(content_params)
      if @content.save
        # user_id << current_user

        redirect_to root_path
      else
          render 'new'
      end
    end
  
    def show
    content = Content.find(params[:id])
    end

  private
  def content_params
    params.require(:content).permit(:id, :title, :director, :screening_date , :synopsis, :impressions, :external_url, :embed_code, :image, :rating)
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
