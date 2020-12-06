class GroupsController < ApplicationController
    def index
        render json: GroupSerializer.new(Group.all)
    end

    def create
        group = Group.new(group_params)
        if group.save
            render json: GroupSerializer.new(group)
        else
            render json: {error: "Please try again."}
        end
    end

    def show
        group = Group.find(params[:id])
        render json: GroupSerializer.new(group)
    end

    # def destroy
    #     if group = Group.find(params[:id])
    #         group.destroy
    #     else
    #         render json: {message: "Please try again."}
    #     end
    # end

    private

    def group_params
        params.require(:group).permit(:name)
    end
end
