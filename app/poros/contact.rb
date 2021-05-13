class Contact
  #do we need an attr reader for all of these attributes?
  def initialize(info)
    @full_name = full_name
    @first_name = info[:first_name]# :first_name
    @last_name = info[:last_name]# :last_name
    @email = info[:email]# :email
    @subject = info[:subject]# :subject
    @message = info[:message]# :message
  end

  def full_name
    @first_name + " " + @last_name
  end
end
