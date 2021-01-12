class ProductsController < ApplicationController
    skip_before_action :authenticate_user!, only: [ :men, :women, :sale, :products, :index, :show ]
    skip_before_action :verify_authenticity_token
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

        # Active Search Query for search bar
        if params[:search].present?
            sql_query = " \
                products.name ILIKE :search \
                OR products.description ILIKE :search \
                OR brands.name ILIKE :search \
            "
            @male_products = Product.joins(:brand).where(sql_query, search: "%#{params[:search]}%")
        else
            @male_products = Product.all
        end

        # PG Search Query for Filters
        if params[:find].present?
            @filter = params[:find][:categories].concat(params[:find][:brands]).flatten.reject(&:blank?)
            @male_products = @filter.empty? ? Product.all : Product.search_by_product_category_brand(@filter)
        end
    end

    def women
        @female_products = Product.where(product_type_id: 2).with_attached_images
    end

    def show
        @shoe = Product.find(params[:id])
        @product_type = ProductType.find(id = @shoe.product_type_id)
        @colours = Colour.where(product_id: @shoe.id)
        @sizes = Size.all
        @colour_names = []
        @colours.each do |colour|
            @colour_names.push(colour.name)
        end

        # Logic for the colour search
        if params[:colour].present?
            @shoe_sizes = Size.where(colour_id: params[:colour])
            render :partial => "size", :layout => false 
        else
            @shoe_sizes = []
        end
        # For Ajax to run search
        respond_to do |format|
            format.html
            format.json {render json: @shoe_sizes}
        end
    end
end
