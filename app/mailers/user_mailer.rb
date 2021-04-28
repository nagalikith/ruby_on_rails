class UserMailer < ActionMailer::Base
    default from: 'Application Name <no-reply@sheffield.ac.uk>'

    # def reset_password_instructions(users)
    #     mail(
    #         @users = users
    #         from: 'BGCSY <no-reply@sheffield.ac.uk>',
    #         to: '@users.email',
    #         subject: 'Password Forgotten'
    # end
end