class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pets = Pet.find(params[:id])
  end

  def edit
    @pets = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)
    redirect_to pets_path

  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path
  end
  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pets_path
    else
      render 'new'
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :species, :found_date)
  end
end
