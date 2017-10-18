
class EmailsController < ApplicationController
  def new
  end

  def create
    # render plain: params[:email].inspect
    @email = Email.new(email_params)
    @email.save
    postmark
    redirect_to @email
  end

  def index
    @emails = Email.all
  end

  def show
    @email = Email.find(params[:id])
  end

  private

  def email_params
    params.require(:email).permit(:text, :subject, :address)
  end

  def postmark
    PostmarkMailer.intro_mail(@email).deliver_now
  end
end
