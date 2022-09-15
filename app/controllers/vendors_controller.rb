class VendorsController < ApplicationController

    def index
    vendors = Vendor.all
    render json: vendors
    end

    def show
    vendor = Vendor.find_by(id: params[:id]).to_json(methods: [:vendor_sweets])
    render json: vendor, only:[:id, :name]
    end

    def create
    vender = Vendor.create(vendor_params)

    end

end
