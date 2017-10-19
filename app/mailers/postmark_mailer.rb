class PostmarkMailer < ActionMailer::Base
  def intro_mail(email)
    @email = email
    binding.pry
    mail(
      subject: @email.subject,
      to: @email.address,
      from: 'richard@eduku.org',
      html_body: @email.text,
      track_opens: 'true')
  end
end
