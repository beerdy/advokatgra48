class OrderMailer < ApplicationMailer
  default from: 'advokatgra48@yandex.ru'
 
  def welcome_email(contact)
    @contact = contact
    @url = 'http://advokatgra48.ru'
    mail(to: 'advokatgra48@yandex.ru', subject: 'Message from site')
  end
end
