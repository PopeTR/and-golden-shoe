require 'pry'

class ProductsController < ApplicationController
    skip_before_action :authenticate_user!, only: [ :men, :women, :sale, :products, :index ]
   
    def index
        @shoes = Product.all
    end
    
    def sale
        @products = Product.all
    end

    def men
        @male_products = Product.where(product_type_id: 1).with_attached_images
        @categories = []
        Category.all.each do |category| 
            @categories.push(category.name)
        end
        @brands = []
        Brand.all.each do |brand| 
            @brands.push(brand.name)
        end
        
        if params[:query].present?
            @male_products = Product.search_by_product_category_brand(params[:query])
            # binding.pry
        else
            @male_products = Product.where(product_type_id: 1).with_attached_images
        end

        if params[:find].present?
            @filter = params[:find][:categories].concat(params[:find][:brands]).flatten.reject(&:blank?)
            @male_products = @filter.empty? ? Product.all : Product.search_by_product_category_brand(@filter)
        else
            @male_products = Product.where(product_type_id: 1).with_attached_images
        end
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

# OR products.description ILIKE :query \