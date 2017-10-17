
class EmailsController < ApplicationController
  def new
  end

  def create
    # render plain: params[:email].inspect
    @email = Email.new(email_params)
    @email.save
    redirect_to @email
  end

  def show
    puts "Hey"
    @email = Email.find(params[:id])
  end

  private
  def email_params
    params.require(:email).permit(:text, :subject, :address)
  end
end
