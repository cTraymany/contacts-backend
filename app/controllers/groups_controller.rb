class GroupsController < ApplicationController
    def index
        render json: Group.all
    end

    def create
        group = Group.new(group_params)
        if group.save
            render json: group
        else
            render json: {message: "Please try again."}
        end
    end

    def show
        group = Group.find(params[:id])
        render json: group
    end

    def destroy
        group = Group.find(params[:id])
        group.destroy
    end

    private

    def group_params
        params.require(:group).permit(:name)
    end
end
