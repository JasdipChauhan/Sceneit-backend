class V1::BloggersController < ApplicationController

  def index
    @bloggers = Blogger.all
    render json: @bloggers, status: :ok
  end

  def create
    @blogger = Blogger.new(blogger_params)
    @blogger.save

    render json: @blogger, status: :created
  end

  def destroy
    @blogger = Blogger.where(id: params[:id]).first
    if @blogger.destroy
      head(:ok) #return only the header
    else
      head(:unprocessable_entity)
    end
  end

  private

  def contact_params
    params.require(:blogger).permit(:first_name, :last_name, :email)
  end
end
