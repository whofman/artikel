class ArtdbsController < ApplicationController
  def index
    @search = Artdb.search(params[:search])
    @artdbs = @search.all(:order => 'jaargang DESC').paginate(:page => params[:page], :per_page => 23 )
  end
  
  def show
    @artdb = Artdb.find(params[:id])
  end
  
  def new
    @artdb = Artdb.new
  end
  
  def create
    @artdb = Artdb.new(params[:artdb])
    if @artdb.save
      flash[:notice] = "Successfully created artdb."
      redirect_to @artdb
    else
      render :action => 'new'
    end
  end
  
  def edit
    @artdb = Artdb.find(params[:id])
  end
  
  def update
    @artdb = Artdb.find(params[:id])
    if @artdb.update_attributes(params[:artdb])
      flash[:notice] = "Successfully updated artdb."
      redirect_to @artdb
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @artdb = Artdb.find(params[:id])
    @artdb.destroy
    flash[:notice] = "Successfully destroyed artdb."
    redirect_to artdbs_url
  end
end
