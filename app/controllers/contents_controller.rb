class ContentsController < ApplicationController

  def toppage

  end

  def index
    @content = Content.all
    
  end

  def new
  @content = Content.new  
  end

  def create
  Content.create(content_params)
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
    params.require(:content).permit(:id, :title, :director, :screening_date , :screening_time , :genre ,:synopsis, :impressions, :external_url, :embed_code, :image, :rating)
  end


end

