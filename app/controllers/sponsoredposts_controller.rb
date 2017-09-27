class SponsoredpostsController < ApplicationController
  def show
    @sponsoredpost = Sponsoredpost.find(params[:id])
  end

  def new
  end

  def edit
  end
end
