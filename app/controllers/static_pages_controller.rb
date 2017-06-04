class StaticPagesController < ApplicationController
    def index
    end
   
    def create
        @static_page=StaticPage.create(staticpage_params)
        if @static_page.valid?
            flash[:notice]="Succesfully created"
        else
            flash[:alert]="Error"
        end
        redirect_to root_path
    end
    def update
         @static_page=StaticPage.find(params[:id])
        if @static_page.update(staticpage_params)
            flash[:notice]="Succesfully updated"
            redirect_to root_path
        else
            flash[:alert]="Error"
        redirect_to edit_static_page_path(params[:id])
    end
end
def destroy
    @static_page=StaticPage.find(params[:id])
    @static_page.destroy
    flash[:notice]="Successfully destroyed"
    redirect_to root_path
end

    
end
