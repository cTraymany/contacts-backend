class Api::V1::ContactsController < ApplicationController
    before_action :set_group
    
    def index
        render json: group.contacts
        binding.pry
    end

    def create

    end

    def show

    end

    def destroy

    end

    private

    def set_group
        group = Group.find(params[:group_id])
    end

    def contact_params
        params.require(:contact).permit(:name, :phoneNumber, :birthday, :group_id)
    end
end
