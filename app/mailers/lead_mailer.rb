class LeadMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def error_notification
    mail(to: BACKOFFICE, subject: 'Lead failed to be imported', body: "
      Hi,

      We got lead error, here is raw body sent:

      #{params[:body].inspect}
    ")
  end
end
