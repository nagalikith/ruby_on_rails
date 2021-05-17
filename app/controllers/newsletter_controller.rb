class NewsletterController < ApplicationController

    def index
        
    end

    def create
        @users = User.all
        @volunteers = Volunteer.all
        @donors = Donor.all
        if params[:clubs]
            @users.each do |user|
                if !user.manager
                    email = user.email
                    NewsletterMailer.mail_newsletter(email, params[:attachment]).deliver
                end
            end
        end
        if params[:volunteers]
            @volunteers.each do |user|
                email = user.email
                NewsletterMailer.mail_newsletter(email, params[:attachment]).deliver
            end
        end
        if params[:donors]
            @donors.each do |user|
                email = user.email
                NewsletterMailer.mail_newsletter(email, params[:attachment]).deliver
            end
        end
        redirect_to '/', notice: "Newsletters successfully sent."
    end

end