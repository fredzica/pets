class Api::V1::PetsController < ApplicationController
    # circumventing CRSF check for now
    protect_from_forgery with: :null_session

    def index
        render json: { pets: Pet.all }
    end

    def create
        pet = Pet.new(params.require(:pet).permit([:name, :description, :birth_date, :weight_kg]))

       if pet.save
        render json: pet
       else
        render json: { error: pet.errors.messages }, status: 422
       end
    end
end
