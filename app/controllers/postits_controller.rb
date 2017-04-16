class PostitsController < ApplicationController
  def index
    @postits = Postit.all
  end

  def show
    @postit = Postit.find(params[:id])
  end

  def new
    @postit = Postit.new
  end

  def edit
    @postit = Postit.find(params[:id])
  end

  def create
    @postit = Postit.new(postit_params)

    if @postit.save
      redirect_to @postit
    else
      render 'new'
    end
  end

  def update
    @postit = Postit.find(params[:id])

    if @postit.update(postit_params)
      redirect_to @postit
    else
      render 'edit'
    end
  end

  def destroy
    @postit = Postit.find(params[:id])
    @postit.destroy

    redirect_to postits_path
  end

  def sortable
    @postit = Postit.find(params[:id])
  end

  private
    def postit_params
      params.require(:postit).permit(:title, :text)
    end
end
