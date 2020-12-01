class ContactsController < ApplicationController    
    def index
        if params[:group_id]
            contacts = Group.find(params[:group_id]).contacts
            render json: ContactSerializer.new(contacts)
        else
            render json: ContactSerializer.new(Contact.all)
        end
    end

    def create
        contact = Contact.new(contact_params)
        if contact.save
            render json: ContactSerializer.new(contact)
        else
            render json: {message: "Please try again."}
        end
    end

    def show
        if contact = Contact.find(params[:id])
            render json: ContactSerializer.new(contact)
        else
            render json: {message: "Please try again."}
        end
    end

    def destroy
        if contact = Contact.find(params[:id])
            contact.destroy
        else
            render json: {message: "Please try again."}
        end
    end

    private

    def contact_params(args)
        params.require(:contact).permit(:name, :phoneNumber, :birthday, :group_id)
    end
end