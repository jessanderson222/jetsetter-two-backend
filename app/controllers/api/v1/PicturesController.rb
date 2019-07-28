class Api::V1::PicturesController < ApplicationController
before_action :set_picture, only: [:show, :update, :destroy]

    def index
        @pictures = Picture.all
    end 

    def show
        render json: @pictures, status: 200
    end 

    def create
        @picture = Picture.create(picture_params)
        render json: @picture, status: 201
    end 

    def update
        @picture.update(trip_params)
        render json: @picture, status: 200
    end 

    def destroy
        pictureId = @picture.id
        @picture.destroy 
        render json: {message:"Picture deleted"}
    end 

    private 
    def picture_params
        params.permit(:create_trip_id, :url, :caption, :id)
    end 

    def set_trip
        @createtrip = CreateTrip.find(params[:id])
    end
end