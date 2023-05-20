class UserMailer < ActionMailer::Base
  default :from => "vlads7539@gmail.com"

def registration_confirmation(user)
  @user = user
  mail(:to => "#{user.first_name} <#{user.email}>", :subject => "Registration Confirmation")
end
end