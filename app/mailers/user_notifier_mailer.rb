class UserNotifierMailer < ApplicationMailer
  default from: 'contact@truckapp.com'

  def welcome_user(user)
    @user = user
    @url = 'https://trucke-app-heroku-16.herokuapp.com'
    mail(to: @user.email, subject: "Welcome User")
  end

  def update_blog(user,title,id)
    @user = user
    @title = title
    @id = id
    @url = "https://trucke-app-heroku-16.herokuapp.com/articles/#{@id}"
    mail(to: @user.email, subject: "#{@title} -- New Article Added to the Blog")
  end

end
