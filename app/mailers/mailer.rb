class Mailer < ActionMailer::Base
  default from: "email@domain.com"

  def welcome
    email = "email@domain.com"
    mail(to: email, subject: "Email subject")
  end

end
