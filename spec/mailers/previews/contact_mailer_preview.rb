# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def contact_form_preview
    ContactMailer.contact_form({name: 'Myles Cowper-Coles', email: 'mylescc@gmail.com', contact_body: 'TEST TEST TEST'})
  end

end
