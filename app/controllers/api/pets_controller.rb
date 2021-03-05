class Api::PetsController < ApplicationController
  def index
    @pets = Pet.all
    render "index.json.jb"
  end

  def show
    @pet = Pet.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @pet = Pet.create(
      name: params[:name],
      genre: params[:genre],
      description: params[:description],
    )
    @pet.save
    render "show.json.jb"
  end

  def update
    @pet = Pet.find_by(id: params[:id])
    @pet.name = params[:name] || @pet.name
    @pet.genre = params[:genre] || @pet.genre
    @pet.description = params[:description] || @pet.description
    @pet.save
    render "show.json.jb"
  end

  def destroy
    @pet = Pet.find_by(id: params[:id])
    @pet.destroy
    render json: { message: "This pet has been removed." }
  end
end
