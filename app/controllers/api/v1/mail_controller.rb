class Api::V1::MailController < ApplicationController
  def index;end

  def create
    contact = Contact.new(contact_params)
    # looks like it is sending but the flash message does not show up and it is not redirecting
    ContactMailer.new_contact_email(contact).deliver_now

    flash[:success] = "Thank you for your message! We'll get back to you soon!"
    redirect_to root_path
  end

  private

  def contact_params
    params.permit(:first_name, :last_name, :email, :subject, :message, :commit)
  end
end
