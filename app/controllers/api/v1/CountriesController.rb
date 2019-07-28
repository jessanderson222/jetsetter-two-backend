class Api::V1::CountriesController < ApplicationController

    def index
        @countries = Country.all 
        render(json: @countries)
    end
    
    def show
        @country = Country.find(params[:id])
    end 

    private 
    def country_params
        params.permit(:id, :name, :region, :subregion, :currency)
    end 
end