class PetsController < ApplicationController

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
    @person = Person.find(params[:id])
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pet_path(@pet)
    else
      redirect_to people_path
    end
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update(pet_params)
      redirect_to pet_path(@pet)
    else
      render :edit
    end
  end

  def destroy
    person = Person.find(Pet.find(params[:id]).person_id)
    Pet.find(params[:id]).destroy
    redirect_to person_path(person)
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :age, :kind, :gender, :person_id)
  end
end
