ActionMailer::Base.smtp_settings = {
 :authentication => :plain,
 :port => 587,
 :address => "smtp.gmail.com",
 :user_name => "noreply@designa.com.br",
 :password => "@noreply4mail"
}