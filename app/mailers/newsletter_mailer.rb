class NewsletterMailer < ActionMailer::Base
    default from: 'Application Name <no-reply@sheffield.ac.uk>'

    def mail_newsletter(recipient, attachment)
        
        mail(
            from: 'BGCSY <no-reply@sheffield.ac.uk>',
            to: recipient,
            subject: 'Newsletter',
            attachment: attachment
        )
    end
end