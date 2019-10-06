class Api::V1::CreateTripsController < ApplicationController
    before_action :set_trip, only: [:show, :update, :destroy]

    def index
        @createtrips = CreateTrip.all 
        render(json: @createtrips)
    end 

    def show
        render json: @createtrip, status: 200
    end 

    def create
        @createtrip = Trip.create(trip_params)
        render json: @createtrip, status: 201
    end 

    def update
        @createtrip.update(trip_params)
        render json: @createtrip, status: 200
    end 

    def destroy
        tripId = @createtrip.id
        @trip.destroy 
        render json: {message:"Trip deleted"}
    end 

    private 
    def trip_params
        params.permit(:id, :picture, :rating, :description, :price, :name, :country_id, :user_id)
    end 

    def set_trip
        @createtrip = CreateTrip.find(params[:id])
    end
end
