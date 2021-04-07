class ContactsController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to root_path, notice: "Votre message a bien été envoyé"
    else
      flash.now[:error] = "Une erreur est survenue, veuillez réessayer plus tard"
      render :new
    end
  end
end
