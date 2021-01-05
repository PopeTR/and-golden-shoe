require 'pry'

class ProductsController < ApplicationController
    skip_before_action :authenticate_user!, only: [ :men, :women, :sale ]
    def index
    end
    
    def sale
        @products = Product.all
    end

    def men
        @male_products = Product.where(product_type_id: 1)
    end

    def women
        @female_products = Product.where(product_type_id: 2)
        # ProductType.where(name: "women").products
    end

    def show
    end
end
