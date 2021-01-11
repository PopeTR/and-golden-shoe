class Api::V1::ProductsController < ApplicationController
    skip_before_action :verify_authenticity_token
    skip_before_action :authenticate_user!, only: [ :show ]

    def show
        if params[:colour].present? 
            @shoe_sizes = Size.where(colour_id: params[:colour])
        else
            @shoe_sizes = []
        end
        render json: @shoe_sizes
    end

end