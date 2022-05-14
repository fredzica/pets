class Api::V1::PetsController < ApplicationController
    def index
        render json: { pets: Pet.all }
    end
end