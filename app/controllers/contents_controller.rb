class ContentsController < ApplicationController

  def toppage

  end

  def index
    @content = Content.all
    
  end

  def new
  @content = Content.new  
  # @content.actor_contents.build
  end

  def create
    @content.create(content_params)
    @content.actor_contents.build
    redirect_to root_path

    
      # if @content.save
      #   # user_id << current_user

      #   redirect_to root_path
      # else
      #     render 'new'
      # end
  end

  def show
  content = Content.find(params[:id])
  end

private
  def content_params
    params.require(:content).permit(
      :id, 
      :title,
      :director_id,
      :screeningdate_id ,
      :screeningtime ,
      :synopsis,
      :impressions,
      :external_url,
      :embed_code,
      :image,
      :rating,
      actor_content_attributes: [
        :actor_id
      ],
      genre_content_attributes:[
        :genre_id
      ],
      genre_attributes:[
        :genre
      ]
    )
  end


end

