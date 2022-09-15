class SweetsController < ApplicationController

    def index
    sweets = Sweet.all
    render json: sweets
    end

    def show
    sweet = Sweet.find_by(id: params[:id]).to_json(methods: [:vendor_sweets])
    render json: sweet, only:[:id, :name]
    end

end
