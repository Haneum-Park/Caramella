class ContactMailer < ApplicationMailer
    def send_email_contact (to_email, subject, contents)
        mail(from: 'noreply@caramella.kr', to: to_email, subject: subject, body: contents, content_type: 'text/html')
    end
end