class ChefsController < ApplicationController

  def index
    @chefs = Chef.all
  end

  def new
    @chef = Chef.new
  end

  def create
    @chef = Chef.new(chef_params)
    if @chef.save
      flash[:success] = "New chef has been created"
      redirect_to chef_path(@chef.id)
    else
      flash[:error] = "There was an error saving your form"
      render :new
    end
  end

  def show
    @chef = Chef.find(params[:id])
  end

  def edit
    @chef = Chef.find(params[:id])
  end

  def update
    @chef = Chef.find(params[:id])
    if @chef.update_attributes(chef_params)
    flash[:notice] = "#{@chef.name} was updated"
    redirect_to chef_path(@chef.id)
    else
    flash[:error] = "There was an error updating your form"
    render :edit
    end
  end

 
  def destroy
    @chef = Chef.find(params[:id])
    @chef.destroy
    flash[:notice] = "Your recipe was destroyed."
    redirect_to chefs_path
  end

private

  def chef_params
    params.require(:chef).permit(:name, :show, :specialty, :avatar)
  end

end
