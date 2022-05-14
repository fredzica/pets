class Api::V1::PetsController < ApplicationController
    # circumventing CRSF check for now
    protect_from_forgery with: :null_session

    def index
        render json: { pets: Pet.all }
    end

    def create
        pet = Pet.new(pet_params)
        if pet.save
            render json: pet
        else
            render json: { error: pet.errors.messages }, status: 422
        end
    end

    def update
        pet = Pet.find_by(id: params[:id])

        if pet == nil
            head :not_found
        elsif pet.update(pet_params)
            render json: pet
        else
            render json: { error: pet.errors.messages }, status: 422
        end
    end

    def destroy
        pet = Pet.find_by(id: params[:id])

        if pet == nil
            head :not_found
        elsif pet.delete
            head :no_content
        else
            render json: { error: pet.errors.messages }, status: 422
       end
    end

    private

    def pet_params
        params.require(:pet).permit(:name, :description, :birth_date, :weight_kg)
    end
end
