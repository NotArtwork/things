class VendorSweetsController < ApplicationController

    def create
        newSweet = VendorSweet.new(VendorSweet_params)
        render json: newSweet
    end

    def delete
        oldSweet = VendorSweet.find_by(id: params:[:id])
        
        if oldSweet.destroy
        oldSweet.destroy
        render json: oldSweet
        else
        render json: { errors: "VendorSweet not found" }
    end


    private

    def VendorSweet_params
        params.permit(:price, :vendor_id, :sweet_id)
    end
end
