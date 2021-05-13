# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def new_contact_email
    contact = Contact.new(first_name: "Dani", last_name: "Coleman", email: "danicoleman00@gmail.com", subject: "Love the sunset pic!", message: "I want to see what sizes that comes in and place an order." )

    ContactMailer.with(contact: contact).new_contact_email
  end
end
