class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :products ]

  def home
    @video = ActionController::Base.helpers.asset_path('shoes.mov')
  end

  def contact
  end

  def about
  end
end
