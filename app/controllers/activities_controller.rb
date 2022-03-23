class ActivitiesController < ApplicationController
    def index
        render json: Activity.all.where(city_id: params[:city_id]), status: :ok
        # render json: Activity.all, status: :ok
    end

    def show
        render json: Activity.find(params[:id]), status: :ok
    end
end
