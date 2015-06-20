class ContactMailer < ApplicationMailer
  default from: 'tech@termscloud.co.uk'

  def contact_form(form)
    @form = form
    mail(to: 'tech@termscloud.co.uk', subject: "New message from #{form[:name]}")
  end
end
