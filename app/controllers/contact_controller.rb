class ContactController < ApplicationController
  def index;end

  def create
    @contact = Contact.new(contact_params)

    #currently getting an undefined method 'save' for #<Contact:0x00007fbc01bfa3c8> error
    # if @contact.save
      ContactMailer.with(contact: @contact).new_contact_email.deliver_later

      flash[:success] = "Thank you for your message! We'll get back to you soon!"
      redirect_to root_path
    # else
    #   flash.now[:error] = "Your message had some errors. Please check the form and resubmit."
    #   render :new
    # end
  end

  private

  def contact_params
    # require 'pry'; binding.pry
    params.permit(:first_name, :last_name, :email, :subject, :message, :commit)
  end
end
