# require 'pry'

class ProductsController < ApplicationController
    skip_before_action :authenticate_user!, only: [ :men, :women, :sale, :products, :index ]
    def index
    end
    
    def sale
        @products = Product.all
    end

    def men
        @male_products = Product.where(product_type_id: 1).with_attached_images
    end

    def women
        @female_products = Product.where(product_type_id: 2).with_attached_images
        # ProductType.where(name: "women").products
    end

    def show
        @shoe = Product.find(params[:id])
        @colours = Colour.where(product_id: @shoe.id)
        # @sizes = Size.where(colour_id: @colour.id)
        # @image = rails_blob_path(@shoe.images)
        # binding.pry
    end
end
