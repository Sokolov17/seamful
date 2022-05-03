class UserMailer < ApplicationMailer
    default from: 'vlads7539@gmail.com'

    def welcome_email
      @user = params[:user]
      @url  = 'http://localhost:3000/users/new'
      mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    end
end
