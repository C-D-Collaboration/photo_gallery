class ContactController < ApplicationController
  def index;end

  def create
    @contact = Contact.new(contact_params)
    respond_to do |format|
      if @contact
        # Tell the UserMailer to send a welcome email after save
        ContactMailer.with(contact: @contact.as_json).new_contact_email.deliver_later

        format.html { redirect_to(@contact, notice: 'Contact was successfully created.') }
        format.json { render json: @contact, status: :created, location: @contact }
      else
        format.html { render action: 'new' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end
  #   contact = Contact.new(contact_params)
  #   ContactMailer.new_contact_email(contact).deliver_later
  #
  #   flash[:success] = "Thank you for your message! We'll get back to you soon!"
  #   redirect_to root_path
  # end

  private

  def contact_params
    params.permit(:first_name, :last_name, :email, :subject, :message, :commit)
  end
end
