class PetsController < ApplicationController
  before_action: :set_pet, only: [:show, :edit]
  def index
  @pets = Pet.all
  end

  def show
    # @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    pet = Pet.create(strong_params)
    redirect_to pet_path(id: pet.id)
  end

  def edit
    # @pet = Pet.find(params[:id])
  end

  def update
    pet = Pet.find(params[:id])
    pet.update(strong_params)
    redirect_to pet_path(id: pet.id)
  end

  def destroy
    pet = Pet.find(params[:id])
    pet.destroy
    redirect_to pets_path
  end

  private

  def strong_params
    params.require(:pet).permit(:name, :address, :species, :found_on)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end
end
