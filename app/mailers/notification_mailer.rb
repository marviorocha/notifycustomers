class NotificationMailer < ApplicationMailer

default form: "marviorocha@gmail.com"

def send_notification(client_mail, title, messager)
  @user = client_mail
  @title = title
  @messager = messager
  mail(to: @user, subject: @title)
end



end
