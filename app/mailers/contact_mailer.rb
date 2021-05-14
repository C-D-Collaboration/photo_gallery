class ContactMailer < ApplicationMailer
  def new_contact_email
    @contact = params[:contact]

    #make this an environment variable
    mail(to: 'danicolemanphotography@gmail.com', subject: params[:subject])
  end
end
