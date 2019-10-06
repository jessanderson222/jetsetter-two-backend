class Api::V1::CountriesController < ApplicationController
    before_action :set_country, only: [:show]

    def index
        @countries = Country.all 
        render(json: @countries)
    end
    
    def show
        render json: @country, status: 200
    end 

    private 
    def country_params
        params.permit(:id, :name, :region, :subregion, :currency)
    end 

    def set_country
        @country = Country.find(params[:id])
    end
end