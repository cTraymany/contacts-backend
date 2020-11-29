class ContactsController < ApplicationController    
    def index
        if params[:group_id]
            render json: Group.find(params[:group_id]).contacts
        else
            render json: Contact.all
        end
    end

    def create
        contact = Contact.new(contact_params)
        if contact.save
            render json: contact
        end
    end

    def show
        render json: Contact.find(params[:id])
    end

    def destroy
        contact = Contact.find(params[:id])
        contact.destroy
    end

    private

    def contact_params(args)
        params.require(:contact).permit(:name, :phoneNumber, :birthday, :group_id)
    end
end
