class UserNotifierMailer < ApplicationMailer
  default from: 'estebanmh95@gmail.com'

  def welcome_user(user)
    @user = user
    @url = 'http://localhost:3000'
    mail(to: @user.email, subject: "Welcome User")
  end
end
