class Contact
  attr_reader :first_name,
              :last_name,
              :email,
              :subject,
              :message,
              :full_name
              
  def initialize(info)
    @first_name = info[:first_name]# :first_name
    @last_name = info[:last_name]# :last_name
    @email = info[:email]# :email
    @subject = info[:subject]# :subject
    @message = info[:message]# :message
    @full_name = full_name
  end

  def full_name
    @first_name + " " + @last_name
  end
end
