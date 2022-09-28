class ReportsController < ApplicationController
    def index 
        @reports = Report.all 
    end 

    def show 
        @report = Report.find(params[:id])
    end 

    def new 
        @report = Report.new
    end 

    def create
        @report = current_user.reports.create(report_params)
        
        if @report.save 
            flash[:success] = "Report successfully created"
            redirect_to @report 
        else 
            flash[:error] = "Report creation failed!"
            render :new 
        end 
    end 

    def edit 
        @report = Report.find(params[:id])
    end 

    def update
        @report = current_user.reports.find(params[:id])

        if @report.update(report_params)
            flash[:success] = "Report successfully updated"
            redirect_to @report 
        else 
            flash[:error] = "Report update failed!"
            render :edit 
        end 
    end 

    def destroy 
        @report = Report.find(params[:id])
        @report.destroy 

        redirect_to reports_path
    end 

    private 
    def report_params 
        params.require(:report).permit(:user_id, :area, :title, :description)
    end 
end
