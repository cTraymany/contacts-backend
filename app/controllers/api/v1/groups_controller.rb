class Api::V1::GroupsController < ApplicationController
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



    private

    def group_params
        params.require(:group).permit(:name)
    end
end
