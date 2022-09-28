class AreasController < ApplicationController
    def index 
        @areas = Area.all 
    end 

    def show 
        @area = Area.find(params[:id])
    end 

    def new 
        @area = Area.new
    end 

    def create
        @area = current_user.areas.create(area_params)
        
        if @area.save 
            flash[:success] = "Area successfully created"
            redirect_to @area
        else 
            flash[:error] = "Area creation failed!"
            render :new 
        end 
    end 

    def edit 
        @area = Area.find(params[:id])
    end 

    def update
        @area = current_user.areas.find(params[:id])

        if @area.update(area_params)
            flash[:success] = "Area successfully updated"
            redirect_to @area
        else 
            flash[:error] = "Area update failed!"
            render :edit 
        end 
    end 

    def destroy 
        @area = Area.find(params[:id])
        @area.destroy 

        redirect_to areas_path
    end 

    private 
    def area_params 
        params.require(:area).permit(:name, :location)
    end 
end
