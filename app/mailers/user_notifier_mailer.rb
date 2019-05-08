class UserNotifierMailer < ApplicationMailer
  default from: 'contact@truckapp.com'

  def welcome_user(user)
    @user = user
    @url = 'https://trucke-app-heroku-16.herokuapp.com'
    mail(to: @user.email, subject: "Welcome User")
  end
end
