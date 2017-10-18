class PostmarkMailer < ActionMailer::Base
  def intro_mail(email)
    @email = email
    binding.pry
    mail(
      subject: @email.subject,
      to: 'richard.mands@sage.com',
      from: 'richard@eduku.org',
      html_body: @email.text,
      track_open: 'true')
  end
end
