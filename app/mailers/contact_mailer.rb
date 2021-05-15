class ContactMailer < ApplicationMailer
  def new_contact_email(contact)
    @contact = contact
    mail(to: ENV['GMAIL_USERNAME'], subject: contact.subject, from: contact.email)
  end
end
