class Api::CropsController < ApplicationController
   before_action :set_crop, only: [:show, :update, :destroy]

   def index
      render json: Crop.all
   end

   def show
      render json: @crop
   end

   def create
      crop = Crop.new(crop_params)
      if crop.save
         render json: crop 
      else
         render json: { message: crop.errors }, status: 400
      end
   end

   def update
      if @crop.update(crop_params)
         render json: @crop
      else
         render json: { message: @crop.errors }, status: 400
      end
   end

   def destroy
      if @crop.destroy
         render status: 204
      else
         render json: { message: 'Unable to delete' }, status: 400         
      end
   end

   private
      def crop_params
         params.permit(:name,  :days_to_maturity, :image_url, :date_planted, :active)
      end

      def set_crop
         @crop = Crop.find_by(id: params[:id])
      end
end